import 'package:chefvision/core/constants/app_colors.dart';
import 'package:chefvision/core/utils/design_scaler.dart';
import 'package:chefvision/core/utils/extensions/build_context_utils.dart';
import 'package:flutter/material.dart';

class PhotoNameSection extends StatelessWidget {
  const PhotoNameSection({super.key, required this.photo, required this.name});

  final String photo;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomLeft,
      children: [
        Image.network(
          photo,
          height: DesignScaler.h(256),
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        Padding(
          padding: EdgeInsetsGeometry.only(
            left: DesignScaler.w(24),
            bottom: DesignScaler.h(16),
          ),
          child: Flexible(
            child: Text(
              name,
              style: context.styles.displayLarge?.copyWith(
                color: AppColors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
