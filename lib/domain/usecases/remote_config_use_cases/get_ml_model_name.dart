import 'package:chefvision/domain/repositories/remote_config_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetMLModelNameUseCase {
  final RemoteConfigRepository _remoteConfigRepository;

  GetMLModelNameUseCase(this._remoteConfigRepository);

  String call() {
    return _remoteConfigRepository.getMLModelName();
  }
}
