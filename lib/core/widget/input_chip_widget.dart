import 'package:flutter/material.dart';
import 'package:pharm_flow/core/app_extension/text_style_extension.dart';
import 'package:pharm_flow/core/config/app_dimension.dart';

import '../config/app_colors.dart';

class InputChipWidget extends StatefulWidget {
  final String title;
  final bool isSelected;
  final bool? shoeCheckMark;
  final Color? backgroundColor;
  final BorderSide? customBorderSide;

  const InputChipWidget(
      {super.key,
      required this.title,
      required this.isSelected,
      this.backgroundColor,
      this.customBorderSide,
      this.shoeCheckMark});

  @override
  State<InputChipWidget> createState() => _InputChipWidgetState();
}

class _InputChipWidgetState extends State<InputChipWidget> {
  @override
  Widget build(BuildContext context) {
    return InputChip(
      backgroundColor: widget.backgroundColor ?? AppColors.whiteColor,
      showCheckmark: widget.shoeCheckMark ?? true,
      side: widget.customBorderSide ??
          BorderSide(
            color: AppColors.greyDAColor,
            width: 1,
          ),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppDimens.borderRadius15)),
      onSelected: (value) {},
      checkmarkColor: AppColors.whiteColor,
      selected: widget.isSelected,
      labelStyle: widget.isSelected
          ? context.md14.withWhite.weigh400
          : context.md14.withBlack.weigh400,
      selectedColor: AppColors.primary,
      label: Container(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(widget.title),
      )),
    );
  }
}
