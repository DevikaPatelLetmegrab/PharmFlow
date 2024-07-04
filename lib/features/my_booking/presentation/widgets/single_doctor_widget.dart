import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:gap/gap.dart';
import 'package:pharm_flow/core/app_extension/text_style_extension.dart';
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
import 'package:pharm_flow/core/widget/common_imageview.dart';
import 'package:pharm_flow/core/widget/common_label.dart';

class SingleDoctorWidget extends StatelessWidget {
  const SingleDoctorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Squircle(
      borderColor: AppColors.greyE8Color,
      customRadius: BorderRadius.circular(AppDimens.borderRadius30),
      child: Padding(
        padding: const EdgeInsets.all(AppDimens.space16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Jan 20, 2024 - 11:30 AM'),
            const Gap(AppDimens.space10),
            const Divider(
              color: AppColors.greyE8Color,
            ),
            const Gap(AppDimens.space10),
            const CommonDoctorContainer(
              label: 'Proffesional Doctor',
              name: 'Dr.Lincoln Westervelt',
            ),
            const Gap(AppDimens.space10),
            const Divider(
              color: AppColors.greyE8Color,
            ),
            const Gap(AppDimens.space10),
            AppElevatedButton(
              onTap: () {
                NavigationServices().pushName(AppRoutes.detailsPage);
              },
              width: context.getWidth,
              buttonType: ButtonType.outline,
              buttonName: "Make Appointment",
            )
          ],
        ),
      ),
    );
  }
}
