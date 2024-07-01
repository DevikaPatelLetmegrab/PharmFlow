import 'package:flutter/material.dart';

class SquircleDecoration extends ShapeDecoration {
  final BorderSide side;
  final double radius;

  SquircleDecoration(
      {super.color,
      super.gradient,
      super.image,
      super.shadows,
      this.radius = 30,
      this.side = BorderSide.none})
      : super(
          shape: ContinuousRectangleBorder(
            side: side,
            borderRadius: BorderRadius.circular(radius),
          ),
        );
}
