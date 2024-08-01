import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:pharm_flow/core/app_extension/text_style_extension.dart';
import 'package:pharm_flow/core/config/app_assets.dart';
import 'package:pharm_flow/core/config/app_colors.dart';
import 'package:pharm_flow/core/config/app_dimension.dart';
import 'package:pharm_flow/core/routes/navigation_services.dart';
import 'package:pharm_flow/core/widget/app_asset_image.dart';
import 'package:pharm_flow/core/widget/app_textform_field.dart';
import 'package:pharm_flow/core/widget/confirmation_button.dart';

class RescheduleAppointmentSheet extends StatelessWidget {
  const RescheduleAppointmentSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Gap(AppDimens.space10),
          Text(
            'Reschedule',
            style: context.x18,
          ),
          const Gap(AppDimens.space20),
          AppTextFormField(
            label: 'Date',
            hint: 'Select Date',
            suffixIcon: AppAssetImage(
              imagePath: AppAssets.calendarIcon,
              size: AppDimens.imageSize20,
              color: AppColors.blackColor,
            ),
          ),
          const Gap(AppDimens.space10),
          AppTextFormField(
            label: 'Time',
            hint: 'Select Time',
            suffixIcon: AppAssetImage(
              imagePath: AppAssets.clockIcon,
              size: AppDimens.imageSize20,
              color: AppColors.blackColor,
            ),
          ),
          const Gap(AppDimens.space10),
          const AppTextFormField(
            label: 'Reason',
            maxLines: 5,
            hint: 'Write Here..',
          ),
          const Gap(AppDimens.space20),
          ConfirmationButton(
            positiveText: 'Save',
            negativeText: 'Cancel',
            onNegativeClick: () {
              NavigationServices().pop();
            },
          )
        ],
      ),
    );
  }
}
