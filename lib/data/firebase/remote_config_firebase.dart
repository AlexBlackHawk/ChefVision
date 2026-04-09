import 'package:chefvision/data/firebase/firebase_constants.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter/foundation.dart';

abstract class RemoteConfigFirebase {
  RemoteConfigFirebase(this.remoteConfig) {
    init();
  }

  final FirebaseRemoteConfig remoteConfig;

  Future<void> init() async {
    await remoteConfig.setConfigSettings(
      RemoteConfigSettings(
        fetchTimeout: const Duration(seconds: 30),
        minimumFetchInterval: kDebugMode ? const Duration(seconds: 10) : const Duration(hours: 12),
      ),
    );

    await remoteConfig.fetchAndActivate();
  }

  String getAIModelName() {
    return remoteConfig.getString(FirebaseConstants.aiParameterName);
  }

  String getMLModelName() {
    return remoteConfig.getString(FirebaseConstants.mlParameterName);
  }
}
