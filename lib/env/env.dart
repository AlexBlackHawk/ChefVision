import 'package:envied/envied.dart';

part 'env.g.dart';

@Envied(path: '.env')
abstract class Env {
  @EnviedField(varName: 'GOOGLE_REVENUECAT_API_KEY', obfuscate: true)
  String googleRevenueCatApiKey = _Env.googleRevenueCatApiKey;
  // @EnviedField(varName: 'APPLE_REVENUECAT_API_KEY', obfuscate: true)
  // String appleRevenueCatApiKey = _Env.appleRevenueCatApiKey;
  @EnviedField(varName: 'ANDROID_ADS_API_KEY', obfuscate: true)
  String androidAdsApiKey = _Env.androidAdsApiKey;
  @EnviedField(varName: 'IOS_ADS_API_KEY', obfuscate: true)
  String iosAdsApiKey = _Env.androidAdsApiKey;
}