import 'package:flutter/material.dart';
import 'package:pharm_flow/core/config/app_colors.dart';
import 'package:pharm_flow/core/config/app_dimension.dart';
import 'package:pharm_flow/core/utils/squircle/squircle_container.dart';

enum ImageType { asset, network }

class CommonImageview extends StatelessWidget {
  final ImageType imageType;
  final String imagePath;
  final String errorImage;
  final double? height;
  final double? width;
  final BoxFit? fit;
  final Alignment alignment;
  final Color? color;

  const CommonImageview(
      {super.key,
      required this.imageType,
      required this.imagePath,
      this.errorImage = "",
      this.height,
      this.width = double.maxFinite,
      this.fit,
      this.alignment = Alignment.center,
      this.color});

  @override
  Widget build(BuildContext context) {
    var image = switch (imageType) {
      ImageType.asset => Image.asset(
          imagePath,
          color: color,
          height: height,
          width: width,
          alignment: alignment,
          fit: fit,
        ),
      ImageType.network => Image.network(
          imagePath,
          color: color,
          height: height,
          width: width,
          alignment: alignment,
          fit: fit,
        ),
    };

    return Squircle(
      radius: AppDimens.borderRadius30,
      side: BorderSide(
        color: AppColors.transparent,
      ),
      clipBehavior: Clip.hardEdge,
      child: image,
    );
  }
}
