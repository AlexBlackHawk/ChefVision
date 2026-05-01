// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:chefvision/core/modules/app_module/app_module.dart' as _i418;
import 'package:chefvision/data/firebase/ml_model_downloader_firebase.dart'
    as _i426;
import 'package:chefvision/data/firebase/remote_config_firebase.dart' as _i120;
import 'package:chefvision/data/repositories/ml_model_downloader_repository_impl.dart'
    as _i1069;
import 'package:chefvision/data/repositories/remote_config_repository_impl.dart'
    as _i460;
import 'package:chefvision/data/repositories/subscription_repository_impl.dart'
    as _i125;
import 'package:chefvision/data/revenuecat/subscription_revenuecat.dart'
    as _i596;
import 'package:chefvision/domain/repositories/ml_model_downloader_repository.dart'
    as _i909;
import 'package:chefvision/domain/repositories/remote_config_repository.dart'
    as _i410;
import 'package:chefvision/domain/repositories/subscription_repository.dart'
    as _i646;
import 'package:chefvision/domain/usecases/ml_model_downloader_use_cases/download_ml_model_use_case.dart'
    as _i954;
import 'package:chefvision/domain/usecases/remote_config_use_cases/get_ai_model_name_use_case.dart'
    as _i770;
import 'package:chefvision/domain/usecases/remote_config_use_cases/get_ml_model_name.dart'
    as _i804;
import 'package:chefvision/domain/usecases/subscription_use_cases/get_all_packages_use_case.dart'
    as _i358;
import 'package:chefvision/domain/usecases/subscription_use_cases/get_current_app_user_id_use_case.dart'
    as _i36;
import 'package:chefvision/domain/usecases/subscription_use_cases/get_current_customer_info_use_case.dart'
    as _i451;
import 'package:chefvision/domain/usecases/subscription_use_cases/get_current_subscription_status_use_case.dart'
    as _i992;
import 'package:chefvision/domain/usecases/subscription_use_cases/log_in_use_case.dart'
    as _i725;
import 'package:chefvision/domain/usecases/subscription_use_cases/log_out_use_case.dart'
    as _i210;
import 'package:chefvision/domain/usecases/subscription_use_cases/purchase_use_case.dart'
    as _i300;
import 'package:chefvision/domain/usecases/subscription_use_cases/restore_purchases_use_case.dart'
    as _i502;
import 'package:firebase_ml_model_downloader/firebase_ml_model_downloader.dart'
    as _i520;
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
  gh.lazySingleton<_i520.FirebaseModelDownloader>(
    () => appModule.mlModelDownloader,
  );
  gh.lazySingleton<_i596.SubscriptionRevenueCat>(
    () => appModule.subscriptionRevenueCat(),
  );
  gh.lazySingleton<_i426.MLModelDownloaderFirebase>(
    () => appModule.mlModelDownloaderFirebase(
      gh<_i520.FirebaseModelDownloader>(),
    ),
  );
  gh.lazySingleton<_i120.RemoteConfigFirebase>(
    () => appModule.remoteConfigFirebase(gh<_i627.FirebaseRemoteConfig>()),
  );
  gh.lazySingleton<_i646.SubscriptionRepository>(
    () => _i125.SubscriptionRepositoryImpl(gh<_i596.SubscriptionRevenueCat>()),
  );
  gh.lazySingleton<_i410.RemoteConfigRepository>(
    () => _i460.RemoteConfigRepositoryImpl(gh<_i120.RemoteConfigFirebase>()),
  );
  gh.factory<_i358.GetAllPackagesUseCase>(
    () => _i358.GetAllPackagesUseCase(gh<_i646.SubscriptionRepository>()),
  );
  gh.factory<_i36.GetCurrentAppUserIdUseCase>(
    () => _i36.GetCurrentAppUserIdUseCase(gh<_i646.SubscriptionRepository>()),
  );
  gh.factory<_i451.GetCurrentCustomerInfoUseCase>(
    () =>
        _i451.GetCurrentCustomerInfoUseCase(gh<_i646.SubscriptionRepository>()),
  );
  gh.factory<_i992.GetCurrentSubscriptionStatusUseCase>(
    () => _i992.GetCurrentSubscriptionStatusUseCase(
      gh<_i646.SubscriptionRepository>(),
    ),
  );
  gh.factory<_i725.LogInUseCase>(
    () => _i725.LogInUseCase(gh<_i646.SubscriptionRepository>()),
  );
  gh.factory<_i210.LogOutUseCase>(
    () => _i210.LogOutUseCase(gh<_i646.SubscriptionRepository>()),
  );
  gh.factory<_i300.PurchaseUseCase>(
    () => _i300.PurchaseUseCase(gh<_i646.SubscriptionRepository>()),
  );
  gh.factory<_i502.RestorePurchasesUseCase>(
    () => _i502.RestorePurchasesUseCase(gh<_i646.SubscriptionRepository>()),
  );
  gh.lazySingleton<_i909.MLModelDownloaderRepository>(
    () => _i1069.MLModelDownloaderRepositoryImpl(
      gh<_i426.MLModelDownloaderFirebase>(),
    ),
  );
  gh.factory<_i770.GetAIModelNameUseCase>(
    () => _i770.GetAIModelNameUseCase(gh<_i410.RemoteConfigRepository>()),
  );
  gh.factory<_i804.GetMLModelNameUseCase>(
    () => _i804.GetMLModelNameUseCase(gh<_i410.RemoteConfigRepository>()),
  );
  gh.factory<_i954.DownloadMLModelUseCase>(
    () => _i954.DownloadMLModelUseCase(gh<_i909.MLModelDownloaderRepository>()),
  );
  return getIt;
}

class _$AppModule extends _i418.AppModule {}
