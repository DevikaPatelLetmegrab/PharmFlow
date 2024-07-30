import 'dart:io';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pharm_flow/core/config/app_assets.dart';
import 'package:pharm_flow/core/config/app_colors.dart';
import 'package:pharm_flow/core/config/app_dimension.dart';
import 'package:pharm_flow/core/utils/squircle/squircle_container.dart';

enum ImageType { asset, network, file }

class SquircleImageView extends StatelessWidget {
  final ImageType imageType;
  final String imagePath;
  final String errorImagePath;
  final double? height;
  final double? width;
  final BoxFit? fit;
  final BoxFit? errorFit;
  final double? scale;
  final Alignment alignment;
  final Color? color;

  const SquircleImageView({
    super.key,
    required this.imageType,
    required this.imagePath,
    this.errorImagePath = AppAssets.image,
    this.height,
    this.width = double.maxFinite,
    this.fit,
    this.errorFit,
    this.scale,
    this.color,
    this.alignment = Alignment.center,
  });

  @override
  Widget build(BuildContext context) {
    Image errorWidget() => Image.asset(
          errorImagePath,
          height: height,
          fit: errorFit,
          width: width,
          color: color,
        );
    var image = switch (imageType) {
      ImageType.asset => Image.asset(
          imagePath,
          fit: fit,
          height: height,
          width: width,
          scale: scale ?? 1,
          alignment: alignment,
          color: color,
          errorBuilder: (context, error, stackTrace) => errorWidget(),
        ),
      ImageType.network => CachedNetworkImage(
          imageUrl: imagePath,
          fit: fit,
          height: height,
          width: width,
          useOldImageOnUrlChange: false,
          alignment: alignment,
          color: color,
          errorWidget: (context, url, error) => errorWidget(),
        ),
      ImageType.file => Image.file(
          File(imagePath),
          fit: fit,
          height: height,
          width: width,
          scale: scale ?? 1,
          alignment: alignment,
          color: color,
          errorBuilder: (context, error, stackTrace) => errorWidget(),
        ),
    };
    return Squircle(
      radius: AppDimens.borderRadius30,
      side: const BorderSide(
        color: AppColors.borderColorGrey,
      ),
      clipBehavior: Clip.hardEdge,
      child: image,
    );
  }
}
