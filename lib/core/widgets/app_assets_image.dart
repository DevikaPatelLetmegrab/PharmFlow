import 'package:flutter/material.dart';

class AppAssetsImage extends StatelessWidget {
  const AppAssetsImage({
    super.key,
    required this.imagePath,
    this.size,
    this.height,
    this.weight,
  });

  final String imagePath;
  final double? size;

  final double? height;
  final double? weight;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      imagePath,
      width: size,
      height: size,
    );
  }
}
