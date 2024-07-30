import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:pharm_flow/core/config/app_dimension.dart';
import 'package:pharm_flow/core/utils/app_size.dart';
import 'package:pharm_flow/core/widget/app_eleveted_button.dart';

class ConfirmationButton extends StatelessWidget {
  final String positiveText;
  final String negativeText;
  final VoidCallback? onPositiveClick;
  final VoidCallback? onNegativeClick;
  double fontSize;
  double elevatedFontSize;
  double? height;

  ConfirmationButton(
      {super.key,
      required this.positiveText,
      required this.negativeText,
      this.onPositiveClick,
      this.fontSize = 16,
      this.elevatedFontSize = 16,
      this.height,
      this.onNegativeClick});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: AppButton(
            buttonType: ButtonType.outline,
            height: height ?? context.w(50),
            onTap: onNegativeClick,
            buttonName: negativeText,
            fontSize: fontSize ?? 16,
          ),
        ),
        const Gap(AppDimens.space15),
        Expanded(
          child: AppButton(
            buttonType: ButtonType.elevated,
            height: height ?? context.w(50),
            onTap: onPositiveClick,
            buttonName: positiveText,
            fontSize: elevatedFontSize,
          ),
        ),
      ],
    );
  }
}
