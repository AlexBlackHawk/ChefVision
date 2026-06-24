import 'package:chefvision/core/constants/app_colors.dart';
import 'package:chefvision/core/utils/design_scaler.dart';
import 'package:chefvision/core/utils/extensions/build_context_utils.dart';
import 'package:chefvision/resources/gen/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class EditProductQuantityItem extends StatelessWidget {
  const EditProductQuantityItem({super.key, required this.name, required this.quantity});

  final String name;
  final String quantity;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: DesignScaler.h(16.55),
        horizontal: DesignScaler.w(16.55),
      ),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(DesignScaler.w(14)),
        border: Border.all(
          color: AppColors.gray100,
          width: DesignScaler.w(0.5),
        ),
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
      ),
      child: Column(
        spacing: DesignScaler.h(8),
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            name,
            style: context.styles.labelLarge,
          ),
          TextFormField(
            initialValue: quantity,
            style: context.styles.headlineMedium?.copyWith(
              color: AppColors.black50,
            ),
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(
                vertical: DesignScaler.h(8),
                horizontal: DesignScaler.w(16),
              ),
              border: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: AppColors.gray300,
                      width: DesignScaler.w(0.5)
                  ),
                  borderRadius: BorderRadius.circular(DesignScaler.w(10))
              ),
            ),
          ),
          Row(
            spacing: DesignScaler.w(8),
            children: [
              Expanded(
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.green500,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(DesignScaler.w(10)),
                    ),
                    padding: EdgeInsets.symmetric(
                      vertical: DesignScaler.h(8),
                    ),
                  ),
                  child: Text(
                    LocaleKeys.save.tr(),
                    style: context.styles.headlineSmall?.copyWith(
                      color: AppColors.white,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.gray300,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(DesignScaler.w(10)),
                    ),
                    padding: EdgeInsets.symmetric(
                      vertical: DesignScaler.h(8),
                    ),
                  ),
                  child: Text(
                    LocaleKeys.cancel.tr(),
                    style: context.styles.headlineSmall?.copyWith(
                      color: AppColors.gray700,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
