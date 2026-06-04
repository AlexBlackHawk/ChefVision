import 'package:chefvision/core/constants/app_colors.dart';
import 'package:chefvision/core/utils/design_scaler.dart';
import 'package:chefvision/core/utils/extensions/build_context_utils.dart';
import 'package:chefvision/resources/gen/assets.gen.dart';
import 'package:flutter/material.dart';

class TimeCaloriesSection extends StatelessWidget {
  const TimeCaloriesSection({super.key, required this.time, required this.calories});

  final String time;
  final String calories;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: DesignScaler.h(16),
        horizontal: DesignScaler.w(24),
      ),
      decoration: BoxDecoration(
        color: AppColors.white,
        border: Border(
          bottom: BorderSide(
            color: AppColors.gray200,
            width: DesignScaler.w(0.5),
          )
        )
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          RichText(
            text: TextSpan(
              children: [
                WidgetSpan(
                  alignment: PlaceholderAlignment.middle,
                  child: Assets.icons.clock.svg(
                    width: DesignScaler.w(20),
                    height: DesignScaler.h(20),
                    colorFilter: ColorFilter.mode(
                      AppColors.orange500,
                      BlendMode.srcIn,
                    ),
                  ),
                ),
                WidgetSpan(
                  child: SizedBox(
                    width: DesignScaler.w(8),
                  ),
                ),
                TextSpan(
                  text: time,
                  style: context.styles.displaySmall,
                )
              ],
            ),
          ),
          VerticalDivider(
            color: AppColors.gray300,
            width: DesignScaler.w(1),
            thickness: DesignScaler.w(1),
          ),
          RichText(
            text: TextSpan(
              children: [
                WidgetSpan(
                  alignment: PlaceholderAlignment.middle,
                  child: Assets.icons.fire.svg(
                    width: DesignScaler.w(20),
                    height: DesignScaler.h(20),
                    colorFilter: ColorFilter.mode(
                      AppColors.red500,
                      BlendMode.srcIn,
                    ),
                  ),
                ),
                WidgetSpan(
                  child: SizedBox(
                    width: DesignScaler.w(8),
                  ),
                ),
                TextSpan(
                  text: calories,
                  style: context.styles.displaySmall,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
