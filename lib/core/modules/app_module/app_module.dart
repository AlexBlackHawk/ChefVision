import 'package:chefvision/data/firebase/ml_model_downloader_firebase.dart';
import 'package:chefvision/data/firebase/remote_config_firebase.dart';
import 'package:chefvision/data/revenuecat/subscription_revenuecat.dart';
import 'package:firebase_ml_model_downloader/firebase_ml_model_downloader.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:injectable/injectable.dart';

@module
abstract class AppModule {
  @lazySingleton
  FirebaseRemoteConfig get remoteConfig => FirebaseRemoteConfig.instance;

  @lazySingleton
  FirebaseModelDownloader get mlModelDownloader => FirebaseModelDownloader.instance;

  @lazySingleton
  RemoteConfigFirebase remoteConfigFirebase(FirebaseRemoteConfig remoteConfig) => RemoteConfigFirebase(remoteConfig);

  @lazySingleton
  MLModelDownloaderFirebase mlModelDownloaderFirebase(FirebaseModelDownloader mlModelDownloader) => MLModelDownloaderFirebase(mlModelDownloader);

  @lazySingleton
  SubscriptionRevenueCat subscriptionRevenueCat() => SubscriptionRevenueCat();
}
