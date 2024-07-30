import 'dart:math';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:pharm_flow/core/config/app_colors.dart';

class SquircleInputBorder extends OutlineInputBorder {
  const SquircleInputBorder({
    super.borderSide = const BorderSide(color: AppColors.borderColorGrey),
    this.borderRadius = const BorderRadius.all(Radius.circular(4.0)),
    this.gapPadding = 4.0,
  }) : assert(gapPadding >= 0.0);

  static bool _cornersAreCircular(BorderRadius borderRadius) {
    return borderRadius.topLeft.x == borderRadius.topLeft.y &&
        borderRadius.bottomLeft.x == borderRadius.bottomLeft.y &&
        borderRadius.topRight.x == borderRadius.topRight.y &&
        borderRadius.bottomRight.x == borderRadius.bottomRight.y;
  }

  final double gapPadding;

  final BorderRadius borderRadius;

  @override
  bool get isOutline => true;

  @override
  SquircleInputBorder copyWith({
    BorderSide? borderSide,
    BorderRadius? borderRadius,
    double? gapPadding,
  }) {
    return SquircleInputBorder(
      borderSide: borderSide ?? this.borderSide,
      borderRadius: borderRadius ?? this.borderRadius,
      gapPadding: gapPadding ?? this.gapPadding,
    );
  }

  @override
  EdgeInsetsGeometry get dimensions {
    return EdgeInsets.all(borderSide.width);
  }

  @override
  SquircleInputBorder scale(double t) {
    return SquircleInputBorder(
      borderSide: borderSide.scale(t),
      borderRadius: borderRadius * t,
      gapPadding: gapPadding * t,
    );
  }

  @override
  ShapeBorder? lerpFrom(ShapeBorder? a, double t) {
    if (a is SquircleInputBorder) {
      final SquircleInputBorder outline = a;
      return SquircleInputBorder(
        borderRadius: BorderRadius.lerp(outline.borderRadius, borderRadius, t)!,
        borderSide: BorderSide.lerp(outline.borderSide, borderSide, t),
        gapPadding: outline.gapPadding,
      );
    }
    return super.lerpFrom(a, t);
  }

  @override
  ShapeBorder? lerpTo(ShapeBorder? b, double t) {
    if (b is SquircleInputBorder) {
      final SquircleInputBorder outline = b;
      return SquircleInputBorder(
        borderRadius: BorderRadius.lerp(borderRadius, outline.borderRadius, t)!,
        borderSide: BorderSide.lerp(borderSide, outline.borderSide, t),
        gapPadding: outline.gapPadding,
      );
    }
    return super.lerpTo(b, t);
  }

  @override
  Path getInnerPath(Rect rect, {TextDirection? textDirection}) {
    return _getPath(borderRadius
        .resolve(textDirection)
        .toRRect(rect)
        .deflate(borderSide.width));
  }

  @override
  Path getOuterPath(Rect rect, {TextDirection? textDirection}) {
    return _getPath(borderRadius.resolve(textDirection).toRRect(rect));
  }

  @override
  void paintInterior(Canvas canvas, Rect rect, Paint paint,
      {TextDirection? textDirection}) {
    canvas.drawRRect(borderRadius.resolve(textDirection).toRRect(rect), paint);
  }

  @override
  bool get preferPaintInterior => true;

  Path _getPath(RRect rrect) {
    final double left = rrect.left;
    final double right = rrect.right;
    final double top = rrect.top;
    final double bottom = rrect.bottom;
    //  Radii will be clamped to the value of the shortest side
    // of rrect to avoid strange tie-fighter shapes.
    final RRect scaledRRect = rrect.scaleRadii();

    final double tlRadiusX =
        max(0.0, _clampToShortest(scaledRRect, scaledRRect.tlRadiusX));
    final double tlRadiusY =
        max(0.0, _clampToShortest(scaledRRect, scaledRRect.tlRadiusY));
    final double trRadiusX =
        max(0.0, _clampToShortest(scaledRRect, scaledRRect.trRadiusX));
    final double trRadiusY =
        max(0.0, _clampToShortest(scaledRRect, scaledRRect.trRadiusY));
    final double blRadiusX =
        max(0.0, _clampToShortest(scaledRRect, scaledRRect.blRadiusX));
    final double blRadiusY =
        max(0.0, _clampToShortest(scaledRRect, scaledRRect.blRadiusY));
    final double brRadiusX =
        max(0.0, _clampToShortest(scaledRRect, scaledRRect.brRadiusX));
    final double brRadiusY =
        max(0.0, _clampToShortest(scaledRRect, scaledRRect.brRadiusY));
    // final Rect tlCorner = Rect.fromLTWH(
    //   left,
    //   top,
    //   tlRadiusX,
    //   tlRadiusY,
    // );
    return Path()
      ..moveTo(left, top + tlRadiusX)
      ..cubicTo(left, top, left, top, left + tlRadiusY, top)
      ..lineTo(right - trRadiusX, top)
      ..cubicTo(right, top, right, top, right, top + trRadiusY)
      ..lineTo(right, bottom - brRadiusX)
      ..cubicTo(right, bottom, right, bottom, right - brRadiusY, bottom)
      ..lineTo(left + blRadiusX, bottom)
      ..cubicTo(left, bottom, left, bottom, left, bottom - blRadiusY)
      ..close();
  }

  double _clampToShortest(RRect rrect, double value) {
    return value > rrect.shortestSide ? rrect.shortestSide : value;
  }

  Path _gapBorderPath(Canvas canvas, RRect rrect, double start, double extent) {
    // When the corner radii on any side add up to be greater than the
    // given height, each radius has to be scaled to not exceed the
    // size of the width/height of the RRect.
    final double left = rrect.left;
    final double right = rrect.right;
    final double top = rrect.top;
    final double bottom = rrect.bottom;
    final RRect scaledRRect = rrect.scaleRadii();
    final double tlRadiusX =
        max(0.0, _clampToShortest(scaledRRect, scaledRRect.tlRadiusX));
    final double tlRadiusY =
        max(0.0, _clampToShortest(scaledRRect, scaledRRect.tlRadiusY));
    final double trRadiusX =
        max(0.0, _clampToShortest(scaledRRect, scaledRRect.trRadiusX));
    final double trRadiusY =
        max(0.0, _clampToShortest(scaledRRect, scaledRRect.trRadiusY));
    final double blRadiusX =
        max(0.0, _clampToShortest(scaledRRect, scaledRRect.blRadiusX));
    final double blRadiusY =
        max(0.0, _clampToShortest(scaledRRect, scaledRRect.blRadiusY));
    // final double brRadiusX =
    //     max(0.0, _clampToShortest(scaledRRect, scaledRRect.brRadiusX));
    final double brRadiusY =
        max(0.0, _clampToShortest(scaledRRect, scaledRRect.brRadiusY));

    // This assumes that the radius is circular (x and y radius are equal).
    // Currently, BorderRadius only supports circular radii.
    //const double cornerArcSweep = pi / 2.0;
    final Path path = Path();

    // Top left corner
    if (scaledRRect.tlRadius != Radius.zero) {
      double tlCornerArcSweep =
          acos(clampDouble(1 - start / tlRadiusY, 0.0, 1.0));
      var radiusDecimal = tlCornerArcSweep;
      if (radiusDecimal <= 1.3) {
        tlCornerArcSweep = tlCornerArcSweep + 10;
      }
      path.moveTo(left, top + tlRadiusX);
      path.cubicTo(
          left, top, left, top, left + tlRadiusY - tlCornerArcSweep, top);
    } else {
      // Because the path is painted with Paint.strokeCap = StrokeCap.butt, horizontal coordinate is moved
      // to the left using borderSide.width / 2.
      path.moveTo(left - borderSide.width / 2, top);
    }

    // Draw top border from top left corner to gap start.
    if (start > tlRadiusX) {
      path.lineTo(left + start, top);
    }

    // Draw top border from gap end to top right corner and draw top right corner.
    //const double trCornerArcStart = (3 * pi) / 2.0;
   // const double trCornerArcSweep = cornerArcSweep;
    if (start + extent < scaledRRect.width) {
      path.moveTo(left + start + extent, top);
      path.lineTo(right - trRadiusX, top);
      if (scaledRRect.trRadius != Radius.zero) {
        path.cubicTo(right, top, right, top, right, top + trRadiusY);
      }
    } else if (start + extent < scaledRRect.width) {
     // final double dx = scaledRRect.width - (start + extent);
     // final double sweep = asin(clampDouble(1 - dx / trRadiusX, 0.0, 1.0));
      path.cubicTo(right, top, right, top, right, top + trRadiusY);
    }

    // Draw right border and bottom right corner.
    if (scaledRRect.brRadius != Radius.zero) {
      path.moveTo(right, top + trRadiusY);
    }
    path.lineTo(right, bottom - brRadiusY);
    if (scaledRRect.brRadius != Radius.zero) {
      path.cubicTo(right, bottom, right, bottom, right - brRadiusY, bottom);
    }

    // Draw bottom border and bottom left corner.
    path.lineTo(left + blRadiusX, bottom);
    if (scaledRRect.blRadius != Radius.zero) {
      path.cubicTo(left, bottom, left, bottom, left, bottom - blRadiusY);
    }

    // Draw left border
    path.lineTo(left, top + tlRadiusY);

    return path;
  }

  @override
  void paint(
    Canvas canvas,
    Rect rect, {
    double? gapStart,
    double gapExtent = 0.0,
    double gapPercentage = 0.0,
    TextDirection? textDirection,
  }) {
    assert(gapPercentage >= 0.0 && gapPercentage <= 1.0);
    assert(_cornersAreCircular(borderRadius));

    final Paint paint = borderSide.toPaint();
    final RRect outer = borderRadius.toRRect(rect);
    final RRect center = outer.deflate(borderSide.width / 2.0);
    if (gapStart == null || gapExtent <= 0.0 || gapPercentage == 0.0) {
      canvas.drawPath(
        getOuterPath(rect, textDirection: textDirection),
        borderSide.toPaint(),
      );
    } else {
      final double extent =
          lerpDouble(0.0, gapExtent + gapPadding * 2.0, gapPercentage)!;
      switch (textDirection!) {
        case TextDirection.rtl:
          final Path path = _gapBorderPath(
              canvas, center, max(0.0, gapStart + gapPadding - extent), extent);
          canvas.drawPath(path, paint);

        case TextDirection.ltr:
          final Path path = _gapBorderPath(
              canvas, center, max(0.0, gapStart - gapPadding), extent);
          canvas.drawPath(path, paint);
      }
    }
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other.runtimeType != runtimeType) {
      return false;
    }
    return other is SquircleInputBorder &&
        other.borderSide == borderSide &&
        other.borderRadius == borderRadius &&
        other.gapPadding == gapPadding;
  }

  @override
  int get hashCode => Object.hash(borderSide, borderRadius, gapPadding);
}
