import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:pharm_flow/core/app_extension/text_style_extension.dart';
import 'package:pharm_flow/core/config/app_assets.dart';
import 'package:pharm_flow/core/config/app_colors.dart';
import 'package:pharm_flow/core/config/app_dimension.dart';
import 'package:pharm_flow/core/routes/app_routes.dart';
import 'package:pharm_flow/core/routes/navigation_services.dart';
import 'package:pharm_flow/core/utils/squircle/squircle_container.dart';
import 'package:pharm_flow/core/widget/app_asset_image.dart';
import 'package:pharm_flow/core/widget/asset_icon.dart';
import 'package:pharm_flow/core/widget/common_doctor_container.dart';

class AppointmentItem extends StatelessWidget {
  const AppointmentItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Squircle(
      borderColor: AppColors.greyE8Color,
      customRadius: BorderRadius.circular(AppDimens.borderRadius30),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: AppDimens.space16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Gap(AppDimens.space15),
            const Text('Jan 20, 2024 - 11:30 AM'),
            const Divider(
              color: AppColors.greyE8Color,
            ),
            const Gap(AppDimens.space10),
            const CommonDoctorContainer(
              label: 'Professional Doctor',
              name: 'Dr.Lincoln Westervelt',
            ),
            const Gap(AppDimens.space15),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: DottedLine(
                dashLength: 10,
                dashColor: AppColors.greyDEColor,
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: TextButton.icon(
                iconAlignment: IconAlignment.end,
                icon: AssetIcon(
                  assetName: AppAssets.arrowRightIcon,
                  color: AppColors.primary,
                  size: AppDimens.imageSize18,
                ),
                style:
                    TextButton.styleFrom(overlayColor: AppColors.transparent),
                label: Text(
                  'View Details',
                  style: context.md14.withPrimary,
                ),
                onPressed: () {
                  NavigationServices().pushName(AppRoutes.myAppointmentDetailsPage);
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
