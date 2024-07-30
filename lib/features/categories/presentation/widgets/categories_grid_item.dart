import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:pharm_flow/core/app_extension/text_style_extension.dart';
import 'package:pharm_flow/core/config/app_assets.dart';
import 'package:pharm_flow/core/config/app_colors.dart';
import 'package:pharm_flow/core/config/app_dimension.dart';
import 'package:pharm_flow/core/utils/squircle/squircle_container.dart';
import 'package:pharm_flow/core/widget/app_asset_image.dart';

class CategoriesGridItem extends StatelessWidget {
  final int index;
  const CategoriesGridItem({super.key, this.index = 0});

  @override
  Widget build(BuildContext context) {
    return index == 5
        ? Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AppAssetImage(
                imagePath: AppAssets.viewAllIcon,
                size: 35,
              ),
              const Gap(AppDimens.space8),
              Text(
                'View all',
                style: context.s12.weigh500.withGrey78,
              )
            ],
          )
        : Column(
            children: [
              Squircle(
                height: 65,
                width: 65,
                borderColor: AppColors.transparent,
                backgroundColor: AppColors.primary.withOpacity(0.2),
                child: AppAssetImage(
                  imagePath: AppAssets.image1,
                  fit: BoxFit.cover,
                ),
              ),
              const Gap(AppDimens.space5),
              Text(
                'Amoxicillin',
                style: context.s12.weigh500,
              )
            ],
          );
  }
}
