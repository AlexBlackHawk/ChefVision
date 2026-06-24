import 'package:chefvision/core/constants/app_colors.dart';
import 'package:chefvision/core/utils/design_scaler.dart';
import 'package:chefvision/core/utils/extensions/build_context_utils.dart';
import 'package:chefvision/resources/gen/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class AddNewProductSection extends StatelessWidget {
  const AddNewProductSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: DesignScaler.h(16.5),
        horizontal: DesignScaler.w(16.5),
      ),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(DesignScaler.w(14)),
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
        border: Border.all(
          color: AppColors.gray200,
          width: DesignScaler.w(0.5),
        )
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: DesignScaler.h(12),
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            LocaleKeys.addNewProduct.tr(),
            style: context.styles.labelLarge,
          ),
          TextField(
            keyboardType: TextInputType.text,
            style: context.styles.headlineLarge?.copyWith(
              color: AppColors.black50,
            ),
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(
                vertical: DesignScaler.h(8),
                horizontal: DesignScaler.w(16),
              ),
              hintText: LocaleKeys.productName.tr(),
              hintStyle: context.styles.headlineLarge?.copyWith(
                color: AppColors.black50,
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
          TextField(
            style: context.styles.headlineLarge?.copyWith(
              color: AppColors.black50,
            ),
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(
                vertical: DesignScaler.h(8),
                horizontal: DesignScaler.w(16),
              ),
              hintText: LocaleKeys.quantityPlaceholder.tr(),
              hintStyle: context.styles.headlineLarge?.copyWith(
                color: AppColors.black50,
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
                    LocaleKeys.add.tr(),
                    style: context.styles.displaySmall?.copyWith(
                      color: AppColors.white,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.gray200,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(DesignScaler.w(10)),
                    ),
                    padding: EdgeInsets.symmetric(
                      vertical: DesignScaler.h(8),
                    ),
                  ),
                  child: Text(
                    LocaleKeys.cancel.tr(),
                    style: context.styles.displaySmall,
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
