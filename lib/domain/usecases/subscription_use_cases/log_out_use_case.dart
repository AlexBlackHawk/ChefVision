import 'package:chefvision/domain/repositories/subscription_repository.dart';
import 'package:injectable/injectable.dart';
import 'package:purchases_flutter/purchases_flutter.dart';

@injectable
class LogOutUseCase {
  final SubscriptionRepository _subscriptionRepository;

  LogOutUseCase(this._subscriptionRepository);

  Future<CustomerInfo> call() async {
    return await _subscriptionRepository.logOut();
  }
}
