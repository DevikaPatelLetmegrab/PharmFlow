import 'package:flutter/material.dart';
import 'package:pharm_flow/core/config/app_colors.dart';
import 'package:pharm_flow/core/utils/app_size.dart';

class RoundIcon extends StatelessWidget {
  const RoundIcon({
    super.key,
    required this.iconPath,
    this.backgroundColor = AppColors.primary,
    this.radius = 15,
    this.iconSize = 20,
    this.iconPadding,
    this.iconColor,
    this.bgopacity = .2,
  });

  final String iconPath;
  final Color backgroundColor;
  final Color? iconColor;
  final double radius;
  final double iconSize;
  final double bgopacity;
  final EdgeInsets? iconPadding;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: context.w(radius),
      backgroundColor: backgroundColor.withOpacity(bgopacity),
      child: Padding(
        padding: iconPadding ?? const EdgeInsets.all(8),
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
