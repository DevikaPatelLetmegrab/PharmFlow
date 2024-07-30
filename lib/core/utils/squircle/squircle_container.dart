import 'package:flutter/material.dart';

import 'package:pharm_flow/core/utils/squircle/squircle_decordation.dart';

import 'package:pharm_flow/core/config/app_colors.dart';
import 'package:pharm_flow/core/utils/app_constants.dart';
@immutable
class Squircle extends Container {
  // final Widget schild;
  final BorderSide? side;
  final Color? backgroundColor;
  final Color borderColor;
  final double radius;
  final Clip clipBehavior;
  final Gradient? gradient;
  final BorderRadius? customRadius;
  final ShapeBorder? customShape;
  DecorationImage? image;

  Squircle({
    super.child,
    this.radius = AppConstants.defaultSquircleRadius,
    this.backgroundColor,
    this.borderColor = AppColors.greyD9Color,
    this.side,
    this.gradient,

    this.customRadius,
    this.image,
    this.customShape,
    this.clipBehavior = Clip.hardEdge,
    super.key,
    super.height,
    super.width,
    super.alignment,
    super.constraints,
    super.foregroundDecoration,
        super.padding,

  }) : super(
          decoration: SquircleDecoration(
              gradient: backgroundColor != null ? null : gradient,
              color: gradient != null ? null : backgroundColor,
              side: side ?? BorderSide(color: borderColor),
              image: image,
              radius: radius,
              customShape: customShape,
              customBorderRadius: customRadius),
          clipBehavior: clipBehavior
        );
}
