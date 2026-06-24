import 'package:chefvision/core/constants/app_colors.dart';
import 'package:chefvision/core/constants/enums/detecting_products_status.dart';
import 'package:chefvision/core/utils/design_scaler.dart';
import 'package:chefvision/core/utils/extensions/build_context_utils.dart';
import 'package:chefvision/presentation/pages/detected_products/widgets/detected_products_content.dart';
import 'package:chefvision/presentation/pages/detected_products/widgets/detected_products_error.dart';
import 'package:chefvision/presentation/pages/detected_products/widgets/detected_products_loading.dart';
import 'package:chefvision/presentation/pages/detected_products/widgets/no_products_detected_content.dart';
import 'package:chefvision/presentation/widgets/back_app_bar.dart';
import 'package:chefvision/resources/gen/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class DetectedProductsPage extends StatefulWidget {
  const DetectedProductsPage({super.key});

  @override
  State<DetectedProductsPage> createState() => _DetectedProductsPageState();
}

class _DetectedProductsPageState extends State<DetectedProductsPage> {
  final DetectingProductsStatus detectingProductsStatus = DetectingProductsStatus.detected;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.gray50,
      appBar: BackAppBar(),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(
          vertical: DesignScaler.h(24),
          horizontal: DesignScaler.w(24),
        ),
        child: Column(
          spacing: DesignScaler.h(24),
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              LocaleKeys.detectedProducts.tr(),
              style: context.styles.titleLarge,
            ),
            switch (detectingProductsStatus) {
              DetectingProductsStatus.detected => DetectedProductsContent(),
              DetectingProductsStatus.noProductsDetected => NoProductsDetectedContent(),
              DetectingProductsStatus.error => DetectedProductsError(),
              DetectingProductsStatus.loading => DetectedProductsLoading(),
            },
          ],
        ),
      ),
    );
  }
}
