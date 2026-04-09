import 'package:chefvision/data/firebase/remote_config_firebase.dart';
import 'package:chefvision/data/revenuecat/subscription_revenuecat.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:injectable/injectable.dart';

@module
abstract class AppModule {
  @lazySingleton
  FirebaseRemoteConfig get remoteConfig => FirebaseRemoteConfig.instance;

  @lazySingleton
  RemoteConfigFirebase remoteConfigFirebase(FirebaseRemoteConfig remoteConfig) => RemoteConfigFirebase(remoteConfig);

  @lazySingleton
  SubscriptionRevenueCat subscriptionRevenueCat() => SubscriptionRevenueCat();
}
