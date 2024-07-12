import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pharm_flow/core/utils/app_size.dart';

import 'package:pharm_flow/core/config/app_colors.dart';

class SquareIcon extends StatelessWidget {
  const SquareIcon({
    super.key,
    required this.iconPath,
    this.backgroundColor = AppColors.primary,
    this.borderColor = AppColors.greyD9Color,
    this.radius = 15,
    this.iconSize = 20,
    this.iconPadding = EdgeInsets.zero,
    this.iconColor,
    this.bgopacity = .2,
  });

  final String iconPath;
  final Color backgroundColor;
  final Color borderColor;
  final Color? iconColor;
  final double radius;
  final double iconSize;
  final double bgopacity;
  final EdgeInsetsGeometry iconPadding;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.h(55),
      width: context.w(55),
      decoration: BoxDecoration(
          border: Border.all(color: borderColor),
          color: backgroundColor,
          borderRadius: BorderRadius.circular(context.w(radius))),
      child: Padding(
        padding: iconPadding,
        child: Image.asset(
          iconPath,
          height: iconSize,
          width: iconSize,
          color: iconColor,
        ),
      ),
    );
  }
}
