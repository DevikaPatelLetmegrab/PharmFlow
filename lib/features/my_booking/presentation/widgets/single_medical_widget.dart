import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:pharm_flow/core/config/app_assets.dart';
import 'package:pharm_flow/core/config/app_colors.dart';
import 'package:pharm_flow/core/config/app_dimension.dart';
import 'package:pharm_flow/core/routes/app_routes.dart';
import 'package:pharm_flow/core/routes/navigation_services.dart';
import 'package:pharm_flow/core/utils/app_size.dart';
import 'package:pharm_flow/core/utils/squircle/squircle_container.dart';
import 'package:pharm_flow/core/widget/app_asset_image.dart';
import 'package:pharm_flow/core/widget/app_eleveted_button.dart';
import 'package:pharm_flow/core/widget/common_doctor_container.dart';
import 'package:pharm_flow/core/widget/common_label.dart';

class SingleMedicalWidget extends StatelessWidget {
  final bool isFav;

  const SingleMedicalWidget({super.key, this.isFav = false});

  @override
  Widget build(BuildContext context) {
    return Squircle(
      borderColor: AppColors.greyE8Color,
      customRadius: BorderRadius.circular(AppDimens.borderRadius30),
      child: Padding(
        padding: const EdgeInsets.symmetric(
            vertical: AppDimens.space10, horizontal: AppDimens.space16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CommonLabel(
                    imagePath: AppAssets.offerIcon,
                    content: '20%off all medicine'),
                if (isFav)
                  AppAssetImage(
                    imagePath: AppAssets.starFill,
                    color: AppColors.primary,
                    size: AppDimens.imageSize20,
                    fit: BoxFit.cover,
                  )
              ],
            ),
            const Gap(AppDimens.space5),
            const Divider(
              color: AppColors.greyE8Color,
            ),
            const Gap(AppDimens.space10),
            const CommonDoctorContainer(
              name: 'New Medical Shop',
              location: 'Ambika Niketan, Athwalines, Surat, Gujarat 395007, ',
            ),
            const Divider(
              color: AppColors.greyE8Color,
            ),
            const Gap(AppDimens.space10),
            AppButton(
              onTap: () {
                NavigationServices().pushName(AppRoutes.detailsPage);
              },
              width: context.getWidth,
              buttonType: ButtonType.outline,
              buttonName: "1.5 Km Distance",
            )
          ],
        ),
      ),
    );
  }
}
