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
      appBar: CommonAppBar(
        title: 'Patient Details',
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(AppDimens.space16),
        child: Column(
          children: [
            AppDropdown(
              items: [],
              label: 'Booking For',
              hintText: 'Select Booking For',
              onChanged: (value) {},
            ),
            Gap(AppDimens.space10),
            AppTextFormField(
              hint: 'Enter Full Name',
              label: 'Full Name',
            ),
            Gap(AppDimens.space10),
            AppTextFormField(
              hint: 'Enter Date of Birth',
              label: 'Date of Birth',
              suffixIcon: AppAssetImage(
                imagePath: AppAssets.calendarIcon,
                size: 20,
                color: AppColors.blackColor,
              ),
            ),
            Gap(AppDimens.space10),
            AppDropdown(
              items: [],
              label: 'Gender',
              hintText: 'Select Gender',
              onChanged: (value) {},
            ),
            Gap(AppDimens.space10),
            AppTextFormField(
              hint: 'Enter Your Age',
              label: 'Age',
            ),
            Gap(AppDimens.space10),
            AppTextFormField(
              hint: 'Enter Mobile Number',
              label: 'Mobile Number',
            ),
            Gap(AppDimens.space10),
            AppTextFormField(
              hint: 'Enter Mobile Number',
              label: 'Emergency contact number',
            ),
            Gap(AppDimens.space10),
            AppTextFormField(
              hint: 'Write Here...',
              label: 'Write Your Problem',
              maxLines: 5,
            ),
            Gap(AppDimens.space30),
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
