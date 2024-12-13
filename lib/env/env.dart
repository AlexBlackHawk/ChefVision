import 'package:envied/envied.dart';

part 'env.g.dart';

@Envied(path: '.env')
abstract class Env {
  @EnviedField(varName: 'GOOGLE_REVENUECAT_API_KEY', obfuscate: true)
  static String googleRevenueCatApiKey = _Env.googleRevenueCatApiKey;
  // @EnviedField(varName: 'APPLE_REVENUECAT_API_KEY', obfuscate: true)
  // static String appleRevenueCatApiKey = _Env.appleRevenueCatApiKey;
  @EnviedField(varName: 'ANDROID_ADS_API_KEY', obfuscate: true)
  static String androidAdsApiKey = _Env.androidAdsApiKey;
  @EnviedField(varName: 'IOS_ADS_API_KEY', obfuscate: true)
  static String iosAdsApiKey = _Env.androidAdsApiKey;
}