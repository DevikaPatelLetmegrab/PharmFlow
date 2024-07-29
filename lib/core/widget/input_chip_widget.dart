import 'package:flutter/material.dart';
import 'package:pharm_flow/core/app_extension/text_style_extension.dart';
import 'package:pharm_flow/core/config/app_dimension.dart';

import 'package:pharm_flow/core/config/app_colors.dart';

class InputChipWidget extends StatefulWidget {
  final String title;
  final bool isSelected;
  final bool? showCheckMark;
  final Color? backgroundColor;
  final BorderSide? customBorderSide;

  const InputChipWidget(
      {super.key,
      required this.title,
      required this.isSelected,
      this.backgroundColor,
      this.customBorderSide,
      this.showCheckMark = true});

  @override
  State<InputChipWidget> createState() => _InputChipWidgetState();
}

class _InputChipWidgetState extends State<InputChipWidget> {
  @override
  Widget build(BuildContext context) {
    return InputChip(
      backgroundColor: widget.backgroundColor ?? AppColors.whiteColor,
      showCheckmark: widget.showCheckMark,
      side: widget.customBorderSide ??
          BorderSide(
            color: AppColors.greyDAColor,
            width: 1,
          ),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppDimens.borderRadius15)),
      onSelected: (value) {},
      labelPadding:const EdgeInsets.all(AppDimens.space8) ,
      checkmarkColor: AppColors.whiteColor,
      selected: widget.isSelected,
      labelStyle: widget.isSelected
          ? context.md14.withWhite.weigh400
          : context.md14.withDarkGrey.weigh400,
      selectedColor: AppColors.primary,
      label: Text(widget.title),
    );
  }
}
