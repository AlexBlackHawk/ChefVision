part of 'subscription_bloc.dart';

sealed class SubscriptionEvent extends Equatable {
  const SubscriptionEvent();

  @override
  List<Object> get props => [];
}

final class SubscriptionUserIdChanged extends SubscriptionEvent {
  const SubscriptionUserIdChanged(this.userId);

  final String userId;

  @override
  List<Object> get props => [userId];
}

final class SubscriptionLoginSubmitted extends SubscriptionEvent {
  const SubscriptionLoginSubmitted();
}

final class SubscriptionLogoutPressed extends SubscriptionEvent {
  const SubscriptionLogoutPressed();
}

final class SubscriptionPackagePurchased extends SubscriptionEvent {
  const SubscriptionPackagePurchased();
}

final class SubscriptionPackagesFetched extends SubscriptionEvent {
  const SubscriptionPackagesFetched();
}

final class SubscriptionPurchasesRestored extends SubscriptionEvent {
  const SubscriptionPurchasesRestored();
}

final class SubscriptionCustomerInitialized extends SubscriptionEvent {
  const SubscriptionCustomerInitialized();
}

