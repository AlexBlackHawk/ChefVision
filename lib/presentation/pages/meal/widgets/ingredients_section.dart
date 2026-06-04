import 'package:chefvision/core/constants/app_colors.dart';
import 'package:chefvision/core/utils/design_scaler.dart';
import 'package:chefvision/core/utils/extensions/build_context_utils.dart';
import 'package:chefvision/presentation/pages/meal/widgets/ingredient.dart';
import 'package:chefvision/resources/gen/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class IngredientsSection extends StatelessWidget {
  IngredientsSection({super.key});

  final Map<String, String> ingredients = <String, String>{
    "Chicken Breast": "500g",
    "Tomatoes": "3 pcs",
    "Onion": "1 pc",
    "Garlic": "4 cloves",
    "Olive Oil": "50 ml",
    "Lemon": "1 pc",
    "Oregano": "1 tsp",
    "Salt & Pepper": "to taste",
  };

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: DesignScaler.h(16),
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            LocaleKeys.ingredients.tr(),
            style: context.styles.titleMedium?.copyWith(
              color: AppColors.gray900,
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(
            vertical: DesignScaler.h(16),
            horizontal: DesignScaler.w(16),
          ),
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: AppColors.black10,
                offset: Offset(0, 1),
                blurRadius: 2,
                spreadRadius: -1,
              ),
              BoxShadow(
                color: AppColors.black10,
                offset: Offset(0, 1),
                blurRadius: 3,
                spreadRadius: 0,
              ),
            ],
            borderRadius: BorderRadius.circular(DesignScaler.w(14)),
            color: AppColors.white,
          ),
          child: ListView.separated(
            padding: EdgeInsets.zero,
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: ingredients.length,
            separatorBuilder: (context, index) => Divider(
              color: AppColors.gray100,
              height: DesignScaler.h(16.5),
              thickness: DesignScaler.h(0.5),
            ),
            itemBuilder: (context, index) => Ingredient(
              name: ingredients.keys.elementAt(index),
              quantity: ingredients.values.elementAt(index),
            ),
          ),
        ),
      ],
    );
  }
}
