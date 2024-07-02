import 'package:flutter/material.dart';

import 'package:pharm_flow/core/utils/app_constants.dart';

class SquircleDecoration extends ShapeDecoration {
  final BorderSide side;
  final double radius;
  final BorderRadius? customBorderRadius;
  final ShapeBorder? customShape;

  OutlinedBorder get sqShape => ContinuousRectangleBorder(
      side: side, borderRadius: BorderRadius.circular(radius));

  SquircleDecoration(
      {this.radius = AppConstants.defaultSquircleRadius,
      this.side = BorderSide.none,
      this.customShape,
      this.customBorderRadius,
      super.color,
      super.image,
      super.gradient,
      super.shadows})
      : super(
          shape: customShape ??
              ContinuousRectangleBorder(
                  side: side,
                  borderRadius:
                      customBorderRadius ?? BorderRadius.circular(radius)),
        );
}
