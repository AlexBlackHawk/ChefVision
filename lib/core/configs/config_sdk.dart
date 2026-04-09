import 'package:chefvision/core/configs/store_config.dart';
import 'package:purchases_flutter/purchases_flutter.dart';

Future<void> configureSDK() async {
  await Purchases.setLogLevel(LogLevel.debug);

  PurchasesConfiguration configuration;
  configuration = PurchasesConfiguration(StoreConfig.instance.apiKey)
    ..appUserID = null;
  await Purchases.configure(configuration);
}
