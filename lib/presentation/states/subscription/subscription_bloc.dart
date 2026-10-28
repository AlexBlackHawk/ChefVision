import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:chefvision/core/constants/enums/subscription_operation.dart';
import 'package:chefvision/domain/usecases/subscription_use_cases/convert_to_purchase_params_use_case.dart';
import 'package:chefvision/domain/usecases/subscription_use_cases/get_all_packages_use_case.dart';
import 'package:chefvision/domain/usecases/subscription_use_cases/get_current_app_user_id_use_case.dart';
import 'package:chefvision/domain/usecases/subscription_use_cases/get_current_customer_info_use_case.dart';
import 'package:chefvision/domain/usecases/subscription_use_cases/get_current_subscription_status_use_case.dart';
import 'package:chefvision/domain/usecases/subscription_use_cases/log_in_use_case.dart';
import 'package:chefvision/domain/usecases/subscription_use_cases/log_out_use_case.dart';
import 'package:chefvision/domain/usecases/subscription_use_cases/purchase_use_case.dart';
import 'package:chefvision/domain/usecases/subscription_use_cases/restore_purchases_use_case.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:purchases_flutter/purchases_flutter.dart';

part 'subscription_event.dart';
part 'subscription_state.dart';
part 'subscription_bloc.freezed.dart';

@lazySingleton
class SubscriptionBloc extends Bloc<SubscriptionEvent, SubscriptionState> {
  SubscriptionBloc({
    required GetAllPackagesUseCase getAllPackagesUseCase,
    required GetCurrentAppUserIdUseCase getCurrentAppUserIdUseCase,
    required GetCurrentCustomerInfoUseCase getCurrentCustomerInfoUseCase,
    required GetCurrentSubscriptionStatusUseCase getCurrentSubscriptionStatusUseCase,
    required LogInUseCase logInUseCase,
    required LogOutUseCase logOutUseCase,
    required PurchaseUseCase purchaseUseCase,
    required RestorePurchasesUseCase restorePurchasesUseCase,
    required ConvertToPurchaseParamsUseCase convertToPurchaseParamsUseCase,
  }) : _getAllPackagesUseCase = getAllPackagesUseCase,
       _getCurrentAppUserIdUseCase = getCurrentAppUserIdUseCase,
       _getCurrentCustomerInfoUseCase = getCurrentCustomerInfoUseCase,
       _getCurrentSubscriptionStatusUseCase = getCurrentSubscriptionStatusUseCase,
       _logInUseCase = logInUseCase,
       _logOutUseCase = logOutUseCase,
       _purchaseUseCase = purchaseUseCase,
       _restorePurchasesUseCase = restorePurchasesUseCase,
       _convertToPurchaseParamsUseCase = convertToPurchaseParamsUseCase,
       super(const SubscriptionState.loading()) {
    on<GetSubscriptionPackages>(_onGetSubscriptionPackages);
    on<PurchasePackageRequested>(_onPurchasePackageRequested);
    on<GetSubscriptionInformation>(_onGetSubscriptionInformation);
    on<RestorePurchasesRequested>(_onRestorePurchasesRequested);
    on<PackagesScreenRepeatOperation>(_onPackagesScreenRepeatOperation);
    on<ManagingScreenRepeatOperation>(_onManagingScreenRepeatOperation);
    on<SelectedPackageChanged>(_onSelectedPackageChanged);
  }

  final GetAllPackagesUseCase _getAllPackagesUseCase;
  final GetCurrentAppUserIdUseCase _getCurrentAppUserIdUseCase;
  final GetCurrentCustomerInfoUseCase _getCurrentCustomerInfoUseCase;
  final GetCurrentSubscriptionStatusUseCase _getCurrentSubscriptionStatusUseCase;
  final LogInUseCase _logInUseCase;
  final LogOutUseCase _logOutUseCase;
  final PurchaseUseCase _purchaseUseCase;
  final RestorePurchasesUseCase _restorePurchasesUseCase;
  final ConvertToPurchaseParamsUseCase _convertToPurchaseParamsUseCase;

  SubscriptionLoaded? get _loaded =>
      state is SubscriptionLoaded ? state as SubscriptionLoaded : null;

  // Subscriptions Packages Screen

  void _onSelectedPackageChanged(SelectedPackageChanged event, Emitter<SubscriptionState> emit) {
    final current = _loaded;
    // Ignore selection before packages are loaded, or mid-operation
    // (e.g. while a purchase is in progress).
    if (current == null ||
        current.packagesScreenStatus is PackagesScreenLoading) {
      return;
    }
    emit(current.copyWith(selectedPackage: event.package));
  }

  FutureOr<void> _onGetSubscriptionPackages(GetSubscriptionPackages event, Emitter<SubscriptionState> emit) async {
    final base = _loaded;
    emit(
      base != null
          ? base.copyWith(
          packagesScreenStatus: const PackagesScreenStatus.loading())
          : const SubscriptionState.loading(),
    );

    try {
      final packages = await _getAllPackagesUseCase();

      // The repository can return null: treat it as a failed operation, so
      // the error UI (with its retry button) is shown.
      if (packages == null) {
        _emitPackagesError('Subscription packages are unavailable', emit);
        return;
      }

      final current = _loaded;
      final selected = current?.selectedPackage;
      emit(SubscriptionState.loaded(
        packages: packages,
        // Keep the selection only if the package is still in the new list.
        selectedPackage:
        selected != null && packages.contains(selected) ? selected : null,
        customerInfo: current?.customerInfo,
        packagesScreenStatus: const PackagesScreenStatus.loaded(),
        managingScreenStatus: current?.managingScreenStatus ??
            const ManagingScreenStatus.loading(),
      ));
    } catch (e) {
      final current = _loaded;
      if (current != null) {
        emit(current.copyWith(
          packagesScreenStatus: PackagesScreenStatus.error(
            operation: SubscriptionOperation.getPackages,
            message: e.toString(),
          ),
        ));
      } else {
        emit(SubscriptionState.error(
          operation: SubscriptionOperation.getPackages,
          message: e.toString(),
        ));
      }
    }
  }

  FutureOr<void> _onPurchasePackageRequested(PurchasePackageRequested event, Emitter<SubscriptionState> emit) async {
    final base = _loaded;
    final package = base?.selectedPackage;

    // Nothing to buy until packages are loaded and one is selected.
    if (base == null || package == null) return;
    // A purchase is already in progress: ignore repeated taps.
    if (base.packagesScreenStatus is PackagesScreenLoading) return;

    emit(base.copyWith(
        packagesScreenStatus: const PackagesScreenStatus.loading()));

    final purchaseParams = _convertToPurchaseParamsUseCase(package: package);

    try {
      final customerInfo = await _purchaseUseCase(purchaseParams: purchaseParams);
      final current = _loaded!;
      emit(current.copyWith(
        customerInfo: customerInfo,
        packagesScreenStatus: const PackagesScreenStatus.loaded(),
      ));
    } catch (e) {
      final current = _loaded!;
      emit(current.copyWith(
        packagesScreenStatus: PackagesScreenStatus.error(
          operation: SubscriptionOperation.purchasePackage,
          message: e.toString(),
        ),
      ));
    }
  }

  // Subscription Managing Screen

  FutureOr<void> _onGetSubscriptionInformation(GetSubscriptionInformation event, Emitter<SubscriptionState> emit) async {
    final base = _loaded;
    emit(
      base != null
          ? base.copyWith(
          managingScreenStatus: const ManagingScreenStatus.loading())
          : const SubscriptionState.loading(),
    );

    try {
      final data = await _getCurrentCustomerInfoUseCase();
      _emitSubscriptionData(data, emit);
    } catch (e) {
      _emitManagingError(
        SubscriptionOperation.getSubscriptionInformation,
        e,
        emit,
      );
    }
  }

  FutureOr<void> _onRestorePurchasesRequested(RestorePurchasesRequested event, Emitter<SubscriptionState> emit) async {
    final base = _loaded;
    emit(
      base != null
          ? base.copyWith(
          managingScreenStatus: const ManagingScreenStatus.loading())
          : const SubscriptionState.loading(),
    );

    try {
      final data = await _restorePurchasesUseCase();
      _emitSubscriptionData(data, emit);
    } catch (e) {
      _emitManagingError(SubscriptionOperation.restorePurchases, e, emit);
    }
  }

  // Shared helpers for the Managing screen

  Future<void> _emitSubscriptionData(
      CustomerInfo customerInfo,
      Emitter<SubscriptionState> emit,
      ) async {
    final current = _loaded;
    final hasActive = await _getCurrentSubscriptionStatusUseCase();
    emit(SubscriptionState.loaded(
      packages: current?.packages ?? const [],
      selectedPackage: current?.selectedPackage,
      customerInfo: customerInfo,
      packagesScreenStatus: current?.packagesScreenStatus ??
          const PackagesScreenStatus.loading(),
      managingScreenStatus: hasActive
          ? const ManagingScreenStatus.loaded()
          : const ManagingScreenStatus.noActiveSubscription(),
    ));
  }

  void _emitPackagesError(String message, Emitter<SubscriptionState> emit) {
    final current = _loaded;
    if (current != null) {
      emit(current.copyWith(
        packagesScreenStatus: PackagesScreenStatus.error(
          operation: SubscriptionOperation.getPackages,
          message: message,
        ),
      ));
    } else {
      emit(SubscriptionState.error(
        operation: SubscriptionOperation.getPackages,
        message: message,
      ));
    }
  }

  void _emitManagingError(
      SubscriptionOperation operation,
      Object error,
      Emitter<SubscriptionState> emit,
      ) {
    final current = _loaded;
    if (current != null) {
      emit(current.copyWith(
        managingScreenStatus: ManagingScreenStatus.error(
          operation: operation,
          message: error.toString(),
        ),
      ));
    } else {
      emit(SubscriptionState.error(
        operation: operation,
        message: error.toString(),
      ));
    }
  }

  // Retry
  // The failed operation is stored in the error state itself, so retrying
  // is: read it from the state, then run that same operation again. The
  // operation is invoked directly (not re-dispatched as a new event), and it
  // emits "loading" before its first await. That means a quick double tap
  // can't start the operation twice: the second retry already sees "loading"
  // instead of "error" and is ignored.

  FutureOr<void> _onPackagesScreenRepeatOperation(PackagesScreenRepeatOperation event, Emitter<SubscriptionState> emit) async {
    return switch (state) {
    // Nothing loaded yet: the top-level error holds the failed operation.
      SubscriptionError(:final operation) => _repeat(operation, null, emit),
      SubscriptionLoaded(
      packagesScreenStatus: PackagesScreenError(
          :final operation,
          :final package,
      ),
      ) =>
          _repeat(operation, package, emit),
      _ => Future.value(), // not in an error state: nothing to retry
    };
  }

  FutureOr<void> _onManagingScreenRepeatOperation(ManagingScreenRepeatOperation event, Emitter<SubscriptionState> emit) async {
    return switch (state) {
      SubscriptionError(:final operation) => _repeat(operation, null, emit),
      SubscriptionLoaded(
      managingScreenStatus: ManagingScreenError(:final operation),
      ) =>
          _repeat(operation, null, emit),
      _ => Future.value(),
    };
  }

  void _repeat(SubscriptionOperation operation, Package? package, Emitter<SubscriptionState> emit) {
    return switch (operation) {
      SubscriptionOperation.getPackages => add(GetSubscriptionPackages()),
      SubscriptionOperation.purchasePackage => add(PurchasePackageRequested()),
      SubscriptionOperation.getSubscriptionInformation => add(GetSubscriptionInformation()),
      SubscriptionOperation.restorePurchases => add(RestorePurchasesRequested()),
    };
  }
}
