import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import 'package:purchases_flutter/purchases_flutter.dart';

part 'subscriptions_event.dart';
part 'subscriptions_state.dart';

class SubscriptionsBloc extends Bloc<SubscriptionsEvent, SubscriptionsState> {
  SubscriptionsBloc() : super(const SubscriptionsState()) {
    on<SubscriptionUserIdChanged>(_onUserIdChanged);
    on<SubscriptionLoginSubmitted>(_onLoginSubmitted);
    on<SubscriptionLogoutPressed>(_onLogoutPressed);
    on<SubscriptionPackagePurchased>(_onPackagePurchased);
    on<SubscriptionPackagesFetched>(_onPackagesFetched);
    on<SubscriptionPurchasesRestored>(_onPurchasesRestored);
    on<SubscriptionCustomerInitialized>(_onCustomerInitialized);
  }

  Future<void> _onCustomerInitialized(SubscriptionCustomerInitialized event, Emitter<SubscriptionsState> emit) async {
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

  void _onUserIdChanged(SubscriptionUserIdChanged event, Emitter<SubscriptionsState> emit) {
    emit(
      state.copyWith(
        userId: event.userId,
      ),
    );
  }

  Future<void> _onLoginSubmitted(SubscriptionLoginSubmitted event, Emitter<SubscriptionsState> emit) async {
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

  Future<void> _onLogoutPressed(SubscriptionLogoutPressed event, Emitter<SubscriptionsState> emit) async {
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

  Future<void> _onPackagePurchased(SubscriptionPackagePurchased event, Emitter<SubscriptionsState> emit) async {
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

  Future<void> _onPackagesFetched(SubscriptionPackagesFetched event, Emitter<SubscriptionsState> emit) async {
    emit(state.copyWith(subscriptionPackagesLoadingStatus: SubscriptionsPackagesLoadingStatus.inProgress));
    try {
      List<Package>? subscriptionPackages = await _subscriptionRepository.getAllPackages();
      emit(
        state.copyWith(
          subscriptionPackages: subscriptionPackages,
          subscriptionPackagesLoadingStatus: SubscriptionsPackagesLoadingStatus.success,
        ),
      );
    } catch (e) {
      emit(state.copyWith(subscriptionPackagesLoadingStatus: SubscriptionsPackagesLoadingStatus.failure));
    }
  }

  Future<void> _onPurchasesRestored(SubscriptionPurchasesRestored event, Emitter<SubscriptionsState> emit) async {
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
