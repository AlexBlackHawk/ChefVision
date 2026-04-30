import 'package:chefvision/domain/repositories/subscription_repository.dart';
import 'package:injectable/injectable.dart';
import 'package:purchases_flutter/purchases_flutter.dart';

@injectable
class LogInUseCase {
  final SubscriptionRepository _subscriptionRepository;

  LogInUseCase(this._subscriptionRepository);

  Future<CustomerInfo> call({
    required String userId,
  }) async {
    return await _subscriptionRepository.logIn(
      userId: userId,
    );
  }
}
