import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CustomSquricleBorder extends OutlinedBorder {
  /// Creates a [CustomSquricleBorder].
  const CustomSquricleBorder({
    super.side,
    this.borderRadius = BorderRadius.zero,
  });

  /// The radius for each corner.
  ///
  /// Negative radius values are clamped to 0.0 by [getInnerPath] and
  /// [getOuterPath].
  final BorderRadiusGeometry borderRadius;

  @override
  EdgeInsetsGeometry get dimensions => EdgeInsets.all(side.width);

  @override
  ShapeBorder scale(double t) {
    return CustomSquricleBorder(
      side: side.scale(t),
      borderRadius: borderRadius * t,
    );
  }

  @override
  ShapeBorder? lerpFrom(ShapeBorder? a, double t) {
    if (a is CustomSquricleBorder) {
      return CustomSquricleBorder(
        side: BorderSide.lerp(a.side, side, t),
        borderRadius:
            BorderRadiusGeometry.lerp(a.borderRadius, borderRadius, t)!,
      );
    }
    return super.lerpFrom(a, t);
  }

  @override
  ShapeBorder? lerpTo(ShapeBorder? b, double t) {
    if (b is CustomSquricleBorder) {
      return CustomSquricleBorder(
        side: BorderSide.lerp(side, b.side, t),
        borderRadius:
            BorderRadiusGeometry.lerp(borderRadius, b.borderRadius, t)!,
      );
    }
    return super.lerpTo(b, t);
  }

  double _clampToShortest(RRect rrect, double value) {
    return value > rrect.shortestSide ? rrect.shortestSide : value;
  }

  Path _getPath(RRect rrect) {
    final double left = rrect.left;
    final double right = rrect.right;
    final double top = rrect.top;
    final double bottom = rrect.bottom;
    //  Radii will be clamped to the value of the shortest side
    // of rrect to avoid strange tie-fighter shapes.
    // final double tlRadiusX = max(0.0, _clampToShortest(rrect, rrect.tlRadiusX));
    // final double tlRadiusY = max(0.0, _clampToShortest(rrect, rrect.tlRadiusY));
    // final double trRadiusX = max(0.0, _clampToShortest(rrect, rrect.trRadiusX));
    // final double trRadiusY = max(0.0, _clampToShortest(rrect, rrect.trRadiusY));
    final double blRadiusX = max(0.0, _clampToShortest(rrect, rrect.blRadiusX));
    final double blRadiusY = max(0.0, _clampToShortest(rrect, rrect.blRadiusY));
    final double brRadiusX = max(0.0, _clampToShortest(rrect, rrect.brRadiusX));
    final double brRadiusY = max(0.0, _clampToShortest(rrect, rrect.brRadiusY));

    return Path()
      ..moveTo(left, top)
      ..cubicTo(left, top, left, top, left, top)
      ..lineTo(right, top)
      ..cubicTo(right, top, right, top, right, top)
      ..lineTo(right, bottom - brRadiusX)
      ..cubicTo(right, bottom, right, bottom, right - brRadiusY, bottom)
      ..lineTo(left + blRadiusX, bottom)
      ..cubicTo(left, bottom, left, bottom, left, bottom - blRadiusY)
      ..close();
  }

  @override
  Path getInnerPath(Rect rect, {TextDirection? textDirection}) {
    return _getPath(
        borderRadius.resolve(textDirection).toRRect(rect).deflate(side.width));
  }

  @override
  Path getOuterPath(Rect rect, {TextDirection? textDirection}) {
    return _getPath(borderRadius.resolve(textDirection).toRRect(rect));
  }

  @override
  CustomSquricleBorder copyWith(
      {BorderSide? side, BorderRadiusGeometry? borderRadius}) {
    return CustomSquricleBorder(
      side: side ?? this.side,
      borderRadius: borderRadius ?? this.borderRadius,
    );
  }

  @override
  void paint(Canvas canvas, Rect rect, {TextDirection? textDirection}) {
    if (rect.isEmpty) {
      return;
    }
    switch (side.style) {
      case BorderStyle.none:
        break;
      case BorderStyle.solid:
        canvas.drawPath(
          getOuterPath(rect, textDirection: textDirection),
          side.toPaint(),
        );
    }
  }

  @override
  bool operator ==(Object other) {
    if (other.runtimeType != runtimeType) {
      return false;
    }
    return other is CustomSquricleBorder &&
        other.side == side &&
        other.borderRadius == borderRadius;
  }

  @override
  int get hashCode => Object.hash(side, borderRadius);

  @override
  String toString() {
    return '${objectRuntimeType(this, 'ContinuousRectangleBorder')}($side, $borderRadius)';
  }
}
