import 'package:chefvision/domain/repositories/subscription_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetCurrentSubscriptionStatusUseCase {
  final SubscriptionRepository _subscriptionRepository;

  GetCurrentSubscriptionStatusUseCase(this._subscriptionRepository);

  Future<bool> call() async {
    return await _subscriptionRepository.getCurrentSubscriptionStatus();
  }
}
