import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:pharm_flow/core/app_extension/text_style_extension.dart';
import 'package:pharm_flow/core/config/app_dimension.dart';
import 'package:pharm_flow/core/utils/app_size.dart';
import 'package:pharm_flow/core/widget/app_check_box.dart';
import 'package:pharm_flow/core/widget/app_dropdown.dart';
import 'package:pharm_flow/core/widget/app_eleveted_button.dart';
import 'package:pharm_flow/core/widget/app_textform_field.dart';

class CancelOrderSheet extends StatelessWidget {
  const CancelOrderSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Gap(AppDimens.space10),
        Text(
          'Cancel Order',
          style: context.x18,
        ),
        const Gap(AppDimens.space20),
        AppDropdown(
          items: [],
          hintText: 'Select Reason',
        ),
        const Gap(AppDimens.space12),
        AppDropdown(
          items: [],
          hintText: 'Select Sub Reason',
        ),
        const Gap(AppDimens.space5),
        AppTextFormField(
          maxLines: 5,
          hint: 'Write a Comment',
        ),
        const Gap(AppDimens.space5),
        AppCheckBox(
            labelChild: RichText(
              text: TextSpan(
                  text: 'I agree PharmPhlow ',
                  children: [
                    TextSpan(
                        text: 'Terms & Condition',
                        style:
                            context.s12.weigh500.withPrimary.primaryUnderLine)
                  ],
                  style: context.s12.weigh500.withGrey33),
            ),
            viewType: SelectionViewType.button,
            value: true,
            onChanged: (value) {}),
        const Gap(AppDimens.space30),
        AppButton(
          width: context.getWidth,
          buttonType: ButtonType.elevated,buttonName: 'Submit',)
      ],
    );
  }
}
