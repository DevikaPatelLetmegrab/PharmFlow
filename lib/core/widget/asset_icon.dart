import 'package:flutter/material.dart';
import 'package:pharm_flow/core/config/app_colors.dart';

class AssetIcon extends StatelessWidget {
  final String assetName;
  final double size;
  final Color? color;

  const AssetIcon({
    required this.assetName,
    super.key,
    this.size = 24,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return ImageIcon(
      AssetImage(
        assetName,
      ),
      size: size,
      color: color ?? AppColors.primary,
    );
  }
}
