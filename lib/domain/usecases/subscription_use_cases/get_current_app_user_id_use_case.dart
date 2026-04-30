import 'package:chefvision/domain/repositories/subscription_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetCurrentAppUserIdUseCase {
  final SubscriptionRepository _subscriptionRepository;

  GetCurrentAppUserIdUseCase(this._subscriptionRepository);

  Future<String> call() async {
    return await _subscriptionRepository.getCurrentAppUserId();
  }
}
