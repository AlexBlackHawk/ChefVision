import 'package:chefvision/core/utils/design_scaler.dart';
import 'package:chefvision/presentation/pages/meal/widgets/back_home_button.dart';
import 'package:chefvision/presentation/pages/meal/widgets/ingredients_section.dart';
import 'package:chefvision/presentation/pages/meal/widgets/instructions_section.dart';
import 'package:chefvision/presentation/pages/meal/widgets/photo_name_section.dart';
import 'package:chefvision/presentation/pages/meal/widgets/time_calories_section.dart';
import 'package:flutter/material.dart';

class GeneratedMealContent extends StatelessWidget {
  const GeneratedMealContent({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          PhotoNameSection(photo: "https://www.eatingwell.com/thmb/TLpqq5-UAS8VGzzXH13RlcRlVMQ=/750x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/EWL-CarrotSaladWithLemonVinaigrette-beauty-33-7440b2f40d2d4bfa98110b8582287f00.jpg", name: "Mediterranean Chicken Bowl"),
          TimeCaloriesSection(time: "35 min", calories: "450 cal"),
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: DesignScaler.h(24),
              horizontal: DesignScaler.w(24),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
              spacing: DesignScaler.h(32),
              children: [
                IngredientsSection(),
                InstructionsSection(),
                BackHomeButton(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
