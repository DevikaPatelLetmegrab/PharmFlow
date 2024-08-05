import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:pharm_flow/core/app_extension/text_style_extension.dart';
import 'package:pharm_flow/core/config/app_colors.dart';
import 'package:pharm_flow/core/config/app_dimension.dart';
import 'package:pharm_flow/core/routes/navigation_services.dart';
import 'package:pharm_flow/core/widget/app_check_box.dart';
import 'package:pharm_flow/core/widget/app_dropdown.dart';
import 'package:pharm_flow/core/widget/app_radio_widget.dart';
import 'package:pharm_flow/core/widget/app_textform_field.dart';
import 'package:pharm_flow/core/widget/common_app_bar.dart';
import 'package:pharm_flow/core/widget/confirmation_button.dart';

class AddNewAddressPage extends StatelessWidget {
  const AddNewAddressPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(
        title: 'Add New Address',
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: AppDimens.space16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Personal Info',
              style: context.x16,
            ),
            const Gap(AppDimens.space10),
            const AppTextFormField(
              hint: 'Full Name',
            ),
            const Gap(AppDimens.space5),
            const AppTextFormField(
              hint: 'Mobile Number',
            ),
            const Gap(AppDimens.space5),
            const AppTextFormField(
              hint: 'Email Address',
            ),
            const Gap(AppDimens.space20),
            Text(
              'Address Info',
              style: context.x16,
            ),
            const Gap(AppDimens.space10),
            const AppTextFormField(
              hint: 'Flat no/Building name',
            ),
            const Gap(AppDimens.space5),
            const AppTextFormField(
              hint: 'Locality/Area/Street',
            ),
            const Gap(AppDimens.space5),
            const AppTextFormField(
              hint: 'Landmark',
            ),
            const Gap(AppDimens.space15),
            Row(
              children: [
                Expanded(
                  child: AppDropdown(
                    items: [],
                    hintText: 'State',
                  ),
                ),
                Gap(AppDimens.space20),
                Expanded(
                  child: Expanded(
                    child: AppDropdown(
                      items: [],
                      hintText: 'City',
                    ),
                  ),
                )
              ],
            ),
            const Gap(AppDimens.space5),
            const AppTextFormField(
              hint: 'Pincode',
            ),
            const Gap(AppDimens.space20),
            Text(
              'Address Type',
              style: context.x16,
            ),
            const Gap(AppDimens.space15),
            Row(
              children: [
                AppRadioWidget(
                    disableColor: AppColors.grey78Color,
                    viewType: SelectionViewType.button,
                    label: 'Home Address',
                    groupValue: 1,
                    value: true,
                    onChanged: (value) {}),
                const Gap(AppDimens.space10),
                AppRadioWidget(
                    viewType: SelectionViewType.button,
                    label: 'Work Address',
                    groupValue: 2,
                    value: false,
                    onChanged: (value) {}),
              ],
            ),
            const Gap(AppDimens.space10),
            AppCheckBox(
                labelStyle: context.md14.weigh300,
                viewType: SelectionViewType.button,
                label: 'Make this as my default address',
                value: false,
                onChanged: (value) {}),
            const Gap(AppDimens.space20),
            ConfirmationButton(
              positiveText: 'Save',
              negativeText: 'Cancel',
              onNegativeClick: () {
                NavigationServices().pop();
              },
            ),
            const Gap(AppDimens.space20),
          ],
        ),
      ),
    );
  }
}
