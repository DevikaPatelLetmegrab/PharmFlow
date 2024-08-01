import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:pharm_flow/core/config/app_assets.dart';
import 'package:pharm_flow/core/config/app_colors.dart';
import 'package:pharm_flow/core/config/app_dimension.dart';
import 'package:pharm_flow/core/routes/app_routes.dart';
import 'package:pharm_flow/core/routes/navigation_services.dart';
import 'package:pharm_flow/core/widget/app_asset_image.dart';
import 'package:pharm_flow/core/widget/app_dropdown.dart';
import 'package:pharm_flow/core/widget/app_textform_field.dart';
import 'package:pharm_flow/core/widget/common_app_bar.dart';
import 'package:pharm_flow/core/widget/confirmation_button.dart';

class PatientDetailsForm extends StatelessWidget {
  const PatientDetailsForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CommonAppBar(
        title: 'Patient Details',
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(AppDimens.space16),
        child: Column(
          children: [
            AppDropdown(
              items: [],
              label: 'Booking For',
              hintText: 'Select Booking For',
              onChanged: (value) {},
            ),
            const Gap(AppDimens.space10),
            const AppTextFormField(
              hint: 'Enter Full Name',
              label: 'Full Name',
            ),
            const Gap(AppDimens.space10),
            AppTextFormField(
              hint: 'Enter Date of Birth',
              label: 'Date of Birth',
              suffixIcon: AppAssetImage(
                imagePath: AppAssets.calendarLightIcon,
                size: 16,
                color: AppColors.blackColor,
              ),
            ),
            const Gap(AppDimens.space10),
            AppDropdown(
              items: [],
              label: 'Gender',
              hintText: 'Select Gender',
              onChanged: (value) {},
            ),
            const Gap(AppDimens.space10),
            const AppTextFormField(
              hint: 'Enter Your Age',
              label: 'Age',
            ),
            const Gap(AppDimens.space10),
            const AppTextFormField(
              hint: 'Enter Mobile Number',
              label: 'Mobile Number',
            ),
            const Gap(AppDimens.space10),
            const AppTextFormField(
              hint: 'Enter Mobile Number',
              label: 'Emergency contact number',
            ),
            const Gap(AppDimens.space10),
            const AppTextFormField(
              hint: 'Write Here...',
              label: 'Write Your Problem',
              maxLines: 5,
            ),
            const Gap(AppDimens.space30),
            ConfirmationButton(
              positiveText: 'Next',
              negativeText: 'Cancel',
              onPositiveClick: () {
                NavigationServices().pushName(AppRoutes.patientDetailsPage);
              },
            )
          ],
        ),
      ),
    );
  }
}
