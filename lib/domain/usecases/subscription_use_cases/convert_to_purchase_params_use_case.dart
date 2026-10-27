import 'package:chefvision/domain/repositories/subscription_repository.dart';
import 'package:injectable/injectable.dart';
import 'package:purchases_flutter/purchases_flutter.dart';

@injectable
class ConvertToPurchaseParamsUseCase {
  final SubscriptionRepository _subscriptionRepository;

  ConvertToPurchaseParamsUseCase(this._subscriptionRepository);

  PurchaseParams call({
    required Package package,
  }) {
    return _subscriptionRepository.convertToPurchaseParams(
      package: package,
    );
  }
}
