import 'package:chefvision/core/utils/design_scaler.dart';
import 'package:chefvision/presentation/pages/detected_products/widgets/detected_product_item.dart';
import 'package:chefvision/presentation/pages/detected_products/widgets/edit_product_quantity_item.dart';
import 'package:flutter/material.dart';

class DetectedProductsList extends StatelessWidget {
  DetectedProductsList({super.key});

  final List<Map<String, String>> products = <Map<String, String>>[
    {
      "product": "Chicken Breast",
      "quantity": "500g",
    },
    {
      "product": "Tomatoes",
      "quantity": "3 pcs",
    },
    {
      "product": "Onion",
      "quantity": "1 pc",
    },
    {
      "product": "Garlic",
      "quantity": "4 cloves",
    },
    {
      "product": "Olive Oil",
      "quantity": "50ml",
    },
  ];

  final bool showEditingProductItem = false;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: EdgeInsets.zero,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: products.length,
      separatorBuilder: (context, index) => SizedBox(
        height: DesignScaler.h(12),
      ),
      itemBuilder: (context, index) => showEditingProductItem ? EditProductQuantityItem(
        name: products[index]["product"]!,
        quantity: products[index]["quantity"]!,
      ) : DetectedProductItem(
        name: products[index]["product"]!,
        quantity: products[index]["quantity"]!,
      ),
    );
  }
}
