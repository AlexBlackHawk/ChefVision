import 'package:chefvision/core/utils/design_scaler.dart';
import 'package:chefvision/presentation/pages/detected_products/widgets/add_new_product_section.dart';
import 'package:chefvision/presentation/pages/detected_products/widgets/add_product_button.dart';
import 'package:chefvision/presentation/pages/detected_products/widgets/detected_products_list.dart';
import 'package:chefvision/presentation/pages/detected_products/widgets/generate_recipe_button.dart';
import 'package:flutter/material.dart';

class DetectedProductsContent extends StatelessWidget {
  const DetectedProductsContent({super.key});

  final bool showAddProductButton = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisSize: MainAxisSize.min,
      spacing: DesignScaler.h(24),
      children: [
        DetectedProductsList(),
        showAddProductButton ? AddProductButton() : AddNewProductSection(),
        GenerateRecipeButton(),
      ],
    );
  }
}
