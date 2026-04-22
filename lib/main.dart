import 'dart:async';
import 'dart:io';
import 'dart:ui';

import 'package:chefvision/core/configs/config_sdk.dart';
import 'package:chefvision/core/configs/store_config.dart';
import 'package:chefvision/core/env/env.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:purchases_flutter/models/store.dart';

import 'app.dart';
import 'firebase_options.dart';

void main() {
  runZonedGuarded(
    () async {
      WidgetsFlutterBinding.ensureInitialized();

      await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform,);
      MobileAds.instance.initialize();
      await EasyLocalization.ensureInitialized();

      if (!kIsWeb && kDebugMode) {
        FirebaseCrashlytics.instance.setCrashlyticsCollectionEnabled(false);
        await FirebaseCrashlytics.instance.deleteUnsentReports();
      }

      FlutterError.onError = (errorDetails) {
        if (!kIsWeb && !kDebugMode) {
          FirebaseCrashlytics.instance.recordFlutterFatalError(errorDetails);
        }
      };

      PlatformDispatcher.instance.onError = (error, stack) {
        FirebaseCrashlytics.instance.recordError(error, stack, fatal: true);
        return true;
      };

      if (Platform.isIOS || Platform.isMacOS) {
        StoreConfig(
          store: Store.appStore,
          apiKey: Env.appleRevenueCatApiKey,
        );
      } else if (Platform.isAndroid) {
        StoreConfig(
          store: Store.playStore,
          apiKey: Env.googleRevenueCatApiKey,
        );
      }

      await configureSDK();

      runApp(
        EasyLocalization(
          supportedLocales: [Locale('en'), Locale('uk')],
          path: 'assets/translations',
          fallbackLocale: Locale('en'),
          child: const App(),
        ),
      );
    },
    (error, stackTrace) {
      if (!kIsWeb) {
        FirebaseCrashlytics.instance.recordError(error, stackTrace, fatal: true);
      }
    },
  );
}
