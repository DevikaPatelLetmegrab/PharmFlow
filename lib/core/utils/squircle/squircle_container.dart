import 'package:flutter/material.dart';

import 'package:pharm_flow/core/utils/squircle/squircle_decordation.dart';

import '../../config/app_colors.dart';
import '../app_constants.dart';

class Squircle extends Container {
  // final Widget schild;
  final BorderSide? side;
  final double? height;
  final double? width;
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
    this.borderColor = AppColors.grey78Color,
    this.side,
    this.gradient,
    this.height,
    this.width,
    this.customRadius,
    this.image,
    this.customShape,
    this.clipBehavior = Clip.hardEdge,
    super.key,
    super.alignment,
    super.constraints,
    super.foregroundDecoration,

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
