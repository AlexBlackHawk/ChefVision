import 'package:chefvision/core/constants/app_colors.dart';
import 'package:chefvision/core/constants/enums/generating_recipe_status.dart';
import 'package:chefvision/presentation/pages/meal/widgets/generated_meal_content.dart';
import 'package:chefvision/presentation/pages/meal/widgets/generating_meal_error.dart';
import 'package:chefvision/presentation/pages/meal/widgets/generating_meal_loading.dart';
import 'package:chefvision/presentation/widgets/back_app_bar.dart';
import 'package:flutter/material.dart';

class MealPage extends StatefulWidget {
  const MealPage({super.key});

  @override
  State<MealPage> createState() => _MealPageState();
}

class _MealPageState extends State<MealPage> {
  final GeneratingRecipeStatus status = GeneratingRecipeStatus.loaded;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.gray50,
      appBar: BackAppBar(),
      body: switch (status) {
        GeneratingRecipeStatus.loaded => GeneratedMealContent(),
        GeneratingRecipeStatus.error => GeneratingMealError(),
        GeneratingRecipeStatus.loading => GeneratingMealLoading(),
      },
    );
  }
}
