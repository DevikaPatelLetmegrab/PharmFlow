import 'package:flutter/material.dart';
import 'package:pharm_flow/core/app_extension.dart/text_style_extention.dart';
import 'package:pharm_flow/core/config/app_colors.dart';
import 'package:pharm_flow/core/config/app_dimension.dart';

class AppElevatedButton extends StatelessWidget {
  final Widget? childWidget;
  final String? buttonName;
  final Color buttonColor;
  final Color fontColor;
  final double? width;
  final double? height;

  const AppElevatedButton({
    super.key,
    this.childWidget,
    this.buttonName,
    this.buttonColor = AppColors.primary,
    this.fontColor = AppColors.white,
    this.height,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? 40,
      width: width,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: buttonColor,
          shape: ContinuousRectangleBorder(
            borderRadius: BorderRadius.circular(AppDimens.circleRadius30),
            side: const BorderSide(color: AppColors.primary),
          ),
        ),
        child: childWidget ??
            Text(
              buttonName ?? '',
              style: context.m14.copyWith(color: fontColor),
            ),
      ),
    );
  }
}
