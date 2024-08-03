import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:pharm_flow/core/app_extension/text_style_extension.dart';
import 'package:pharm_flow/core/config/app_dimension.dart';
import 'package:pharm_flow/core/routes/navigation_services.dart';
import 'package:pharm_flow/core/widget/app_dropdown.dart';
import 'package:pharm_flow/core/widget/app_textform_field.dart';
import 'package:pharm_flow/core/widget/confirmation_button.dart';

class AddBankAccountSheet extends StatelessWidget {
  const AddBankAccountSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Column(
        children: [
          Text(
            'Add New Bank Account',
            style: context.x18,
          ),
          const Gap(AppDimens.space10),
          const AppTextFormField(
            hint: 'Enter Bank Account',
          ),
          const Gap(AppDimens.space20),
          const AppDropdown(
            items: [],
            hintText: 'Select Account Type',
          ),
          const Gap(AppDimens.space10),
          const AppTextFormField(
            hint: 'Enter IFSC Code',
          ),
          const Gap(AppDimens.space10),
          const AppTextFormField(
            hint: 'Enter Bank Name',
          ),
          const Gap(AppDimens.space10),
          const AppTextFormField(
            hint: 'Enter Branch Address',
          ),
          const Gap(AppDimens.space10),
          const AppTextFormField(
            hint: 'Enter Beneficiary Name',
          ),
          const Gap(AppDimens.space30),
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
