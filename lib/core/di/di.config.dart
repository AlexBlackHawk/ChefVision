// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:chefvision/core/modules/app_module/app_module.dart' as _i418;
import 'package:chefvision/data/firebase/remote_config_firebase.dart' as _i120;
import 'package:chefvision/data/revenuecat/subscription_revenuecat.dart'
    as _i596;
import 'package:firebase_remote_config/firebase_remote_config.dart' as _i627;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

// initializes the registration of main-scope dependencies inside of GetIt
_i174.GetIt $configureDependencies(
  _i174.GetIt getIt, {
  String? environment,
  _i526.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i526.GetItHelper(getIt, environment, environmentFilter);
  final appModule = _$AppModule();
  gh.lazySingleton<_i627.FirebaseRemoteConfig>(() => appModule.remoteConfig);
  gh.lazySingleton<_i596.SubscriptionRevenueCat>(
    () => appModule.subscriptionRevenueCat(),
  );
  gh.lazySingleton<_i120.RemoteConfigFirebase>(
    () => appModule.remoteConfigFirebase(gh<_i627.FirebaseRemoteConfig>()),
  );
  return getIt;
}

class _$AppModule extends _i418.AppModule {}
