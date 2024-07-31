import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:pharm_flow/core/app_extension/text_style_extension.dart';
import 'package:pharm_flow/core/config/app_assets.dart';
import 'package:pharm_flow/core/config/app_colors.dart';
import 'package:pharm_flow/core/config/app_dimension.dart';
import 'package:pharm_flow/core/routes/navigation_services.dart';
import 'package:pharm_flow/core/widget/app_asset_image.dart';
import 'package:pharm_flow/core/widget/common_doctor_container.dart';
import 'package:pharm_flow/core/widget/confirmation_button.dart';

class RemoveFavSheet extends StatelessWidget {
  const RemoveFavSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Gap(AppDimens.space10),
          Text(
            'Remove From Favourite',
            style: context.x16,
          ),
          const Gap(AppDimens.space20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Jan 20, 2024 - 11:30 AM'),
              GestureDetector(
                onTap: () {
                  // AppBottomSheet().show(child: const RemoveFavSheet());
                },
                child: AppAssetImage(
                  imagePath: AppAssets.starFill,
                  color: AppColors.primary,
                  size: AppDimens.imageSize20,
                  fit: BoxFit.cover,
                ),
              )
            ],
          ),
          const Gap(AppDimens.space10),
          const Divider(
            color: AppColors.greyE8Color,
          ),
          const Gap(AppDimens.space10),
          const CommonDoctorContainer(
            label: 'Professional Doctor',
            name: 'Dr.Lincoln Westervelt',
          ),
          const Gap(AppDimens.space10),
          const Divider(
            color: AppColors.greyE8Color,
          ),
          const Gap(AppDimens.space20),
          ConfirmationButton(
            positiveText: 'Yes, Remove',
            negativeText: 'Cancel',
            onPositiveClick: () {
              NavigationServices().pop();
            },
            onNegativeClick: () {
              NavigationServices().pop();
            },
          )
        ],
      ),
    );
  }
}
