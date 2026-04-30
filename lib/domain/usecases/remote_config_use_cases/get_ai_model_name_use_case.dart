import 'package:chefvision/domain/repositories/remote_config_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetAIModelNameUseCase {
  final RemoteConfigRepository _remoteConfigRepository;

  GetAIModelNameUseCase(this._remoteConfigRepository);

  String call() {
    return _remoteConfigRepository.getAIModelName();
  }
}
