import 'package:flutter/material.dart';
import 'package:pharm_flow/core/config/app_colors.dart';

class RoundIcon extends StatelessWidget {
  final Widget child;
  final double? borderRadius;
  final Color? backgroundColor;

  const RoundIcon(
      {super.key,
      required this.child,
      this.borderRadius = 22,
      this.backgroundColor = AppColors.lightBlue});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
        radius: borderRadius, backgroundColor: backgroundColor, child: child);
  }
}
