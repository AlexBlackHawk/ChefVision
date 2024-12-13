import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:subscription_repository/subscription_repository.dart';

import 'package:purchases_flutter/purchases_flutter.dart';

part 'subscription_event.dart';
part 'subscription_state.dart';

class SubscriptionBloc extends Bloc<SubscriptionEvent, SubscriptionState> {
  SubscriptionBloc({
    required SubscriptionRepository subscriptionRepository,
  }) : _subscriptionRepository = subscriptionRepository,
       super(const SubscriptionState()) {
    on<SubscriptionUserIdChanged>(_onUserIdChanged);
    on<SubscriptionLoginSubmitted>(_onLoginSubmitted);
    on<SubscriptionLogoutPressed>(_onLogoutPressed);
    on<SubscriptionPackagePurchased>(_onPackagePurchased);
    on<SubscriptionPackagesFetched>(_onPackagesFetched);
    on<SubscriptionPurchasesRestored>(_onPurchasesRestored);
    on<SubscriptionCustomerInitialized>(_onCustomerInitialized);
  }

  final SubscriptionRepository _subscriptionRepository;

  Future<void> _onCustomerInitialized(SubscriptionCustomerInitialized event, Emitter<SubscriptionState> emit) async {
    CustomerInfo customerInfo = await _subscriptionRepository.currentCustomerInfo;
    String appUserId = await _subscriptionRepository.currentAppUserId;
    bool isSubscribed = await _subscriptionRepository.currentSubscriptionStatus;
    emit(
      state.copyWith(
        customerInfo: customerInfo,
        appUserId: appUserId,
        isSubscribed: isSubscribed,
      ),
    );
  }

  void _onUserIdChanged(SubscriptionUserIdChanged event, Emitter<SubscriptionState> emit) {
    emit(
      state.copyWith(
        userId: event.userId,
      ),
    );
  }

  Future<void> _onLoginSubmitted(SubscriptionLoginSubmitted event, Emitter<SubscriptionState> emit) async {
    CustomerInfo customerInfo = await _subscriptionRepository.logIn(state.userId);
    String appUserId = await _subscriptionRepository.currentAppUserId;
    bool isSubscribed = await _subscriptionRepository.currentSubscriptionStatus;
    emit(
      state.copyWith(
        customerInfo: customerInfo,
        appUserId: appUserId,
        isSubscribed: isSubscribed,
      ),
    );
  }

  Future<void> _onLogoutPressed(SubscriptionLogoutPressed event, Emitter<SubscriptionState> emit) async {
    CustomerInfo customerInfo = await _subscriptionRepository.logOut();
    String appUserId = await _subscriptionRepository.currentAppUserId;
    bool isSubscribed = await _subscriptionRepository.currentSubscriptionStatus;
    emit(
      state.copyWith(
        customerInfo: customerInfo,
        appUserId: appUserId,
        isSubscribed: isSubscribed,
      ),
    );
  }

  Future<void> _onPackagePurchased(SubscriptionPackagePurchased event, Emitter<SubscriptionState> emit) async {
    CustomerInfo customerInfo = await _subscriptionRepository.purchasePackage(state.selectedPackage!);
    String appUserId = await _subscriptionRepository.currentAppUserId;
    bool isSubscribed = await _subscriptionRepository.currentSubscriptionStatus;
    emit(
      state.copyWith(
        customerInfo: customerInfo,
        appUserId: appUserId,
        isSubscribed: isSubscribed,
      ),
    );
  }

  Future<void> _onPackagesFetched(SubscriptionPackagesFetched event, Emitter<SubscriptionState> emit) async {
    emit(state.copyWith(subscriptionPackagesLoadingStatus: SubscriptionPackagesLoadingStatus.inProgress));
    try {
      List<Package>? subscriptionPackages = await _subscriptionRepository.getAllPackages();
      emit(
        state.copyWith(
          subscriptionPackages: subscriptionPackages,
          subscriptionPackagesLoadingStatus: SubscriptionPackagesLoadingStatus.success,
        ),
      );
    } catch (e) {
      emit(state.copyWith(subscriptionPackagesLoadingStatus: SubscriptionPackagesLoadingStatus.failure));
    }
  }

  Future<void> _onPurchasesRestored(SubscriptionPurchasesRestored event, Emitter<SubscriptionState> emit) async {
    CustomerInfo customerInfo = await _subscriptionRepository.restorePurchases();
    String appUserId = await _subscriptionRepository.currentAppUserId;
    bool isSubscribed = await _subscriptionRepository.currentSubscriptionStatus;
    emit(
      state.copyWith(
        customerInfo: customerInfo,
        appUserId: appUserId,
        isSubscribed: isSubscribed,
      ),
    );
  }
}
