import 'package:chefvision/domain/repositories/subscription_repository.dart';
import 'package:injectable/injectable.dart';
import 'package:purchases_flutter/purchases_flutter.dart';

@injectable
class GetAllPackagesUseCase {
  final SubscriptionRepository _subscriptionRepository;

  GetAllPackagesUseCase(this._subscriptionRepository);

  Future<List<Package>?> call() async {
    return await _subscriptionRepository.getAllPackages();
  }
}
