import 'package:flutter/material.dart';
import 'package:pharm_flow/core/config/app_colors.dart';
import 'package:pharm_flow/core/utils/squircle/squircle_decoration.dart';

class SquircleContainer extends Container {
  final Color? backgroundColor;
  final Color borderColor;
  final double radius;
  final BorderSide? side;

  SquircleContainer({
    super.key,
    super.child,
    super.alignment,
    super.constraints,
    super.height,
    super.width,
    super.margin,
    super.padding,
    this.radius = 30,
    this.backgroundColor = AppColors.white,
    this.borderColor = AppColors.greyD9,
    this.side,
  }) : super(
          decoration: SquircleDecoration(
            color: backgroundColor,
            side: side ?? BorderSide(color: borderColor),
            radius: radius,
          ),
        );
}
