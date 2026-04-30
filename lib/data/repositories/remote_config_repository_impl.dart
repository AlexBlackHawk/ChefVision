import 'package:chefvision/data/firebase/remote_config_firebase.dart';
import 'package:chefvision/domain/repositories/remote_config_repository.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: RemoteConfigRepository)
class RemoteConfigRepositoryImpl implements RemoteConfigRepository {
  final RemoteConfigFirebase _remoteConfigFirebase;

  RemoteConfigRepositoryImpl(this._remoteConfigFirebase);

  @override
  String getAIModelName() {
    return _remoteConfigFirebase.getAIModelName();
  }

  @override
  String getMLModelName() {
    return _remoteConfigFirebase.getMLModelName();
  }
}
