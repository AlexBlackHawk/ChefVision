import 'dart:io';

// import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
// import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:purchases_flutter/models/store.dart';

import 'app.dart';
import 'configs/config_sdk.dart';
import 'configs/store_config.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform,);
  // MobileAds.instance.initialize();

  // if (Platform.isIOS || Platform.isMacOS) {
  //   StoreConfig(
  //     store: Store.appStore,
  //     apiKey: appleApiKey,
  //   );
  // } else if (Platform.isAndroid) {
  //   StoreConfig(
  //     store: Store.playStore,
  //     apiKey: googleApiKey,
  //   );
  // }

  await configureSDK();

  runApp(const App());
}
