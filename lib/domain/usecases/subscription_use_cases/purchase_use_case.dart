import 'package:chefvision/domain/repositories/subscription_repository.dart';
import 'package:injectable/injectable.dart';
import 'package:purchases_flutter/purchases_flutter.dart';

@injectable
class PurchaseUseCase {
  final SubscriptionRepository _subscriptionRepository;

  PurchaseUseCase(this._subscriptionRepository);

  Future<CustomerInfo> call({
    required PurchaseParams purchaseParams,
  }) async {
    return await _subscriptionRepository.purchase(
      purchaseParams: purchaseParams,
    );
  }
}
