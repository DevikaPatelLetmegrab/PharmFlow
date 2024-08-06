import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:pharm_flow/core/config/app_assets.dart';
import 'package:pharm_flow/core/config/app_dimension.dart';
import 'package:pharm_flow/core/utils/app_size.dart';
import 'package:pharm_flow/core/widget/app_eleveted_button.dart';
import 'package:pharm_flow/core/widget/app_textform_field.dart';

class ContactUsTabview extends StatefulWidget {
  const ContactUsTabview({super.key});

  @override
  State<ContactUsTabview> createState() => _ContactUsTabviewState();
}

class _ContactUsTabviewState extends State<ContactUsTabview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(AppDimens.space16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const AppTextFormField(
                label: 'Full Name',
                hint: 'Full Name',
              ),
              const Gap(AppDimens.space10),
              const AppTextFormField(
                label: 'Mobile Number',
                hint: 'Mobile Number',
                suffixIconSize: BoxConstraints(maxHeight: 20),
              ),
              const Gap(AppDimens.space10),
              const AppTextFormField(
                label: 'Email Address',
                hint: 'Email Address',
                suffixIconSize: BoxConstraints(maxHeight: 20),
              ),
              const Gap(AppDimens.space10),
              const AppTextFormField(
                label: 'Message',
                hint: 'wrtie here...',
                maxLines: 5,
              ),
              const Gap(AppDimens.space30),
              AppButton(
                  width: context.getWidth,
                  buttonType: ButtonType.elevated,
                  buttonName: 'Submit'),
            ],
          ),
        ),
      ),
    );
  }
}
