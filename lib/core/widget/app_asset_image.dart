import 'package:flutter/material.dart';
import 'package:pharm_flow/core/config/app_colors.dart';

class AppAssetImage extends StatelessWidget {
  final String imagePath;
  final double? size;
  final double? height;
  final double? width;
  final Color? color;

  const AppAssetImage(
      {super.key,
      required this.imagePath,
      this.size,
      this.height,
      this.width,
      this.color});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      imagePath,
      width: size ?? width,
      height: size ?? height,
      color: color ?? null,
    );
  }
}
