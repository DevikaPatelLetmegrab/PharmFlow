import 'package:flutter/material.dart';
import 'package:pharm_flow/core/widget/app_asset_image.dart';

class PageviewImageItem extends StatelessWidget {
  final String? imgString;

  const PageviewImageItem({super.key, @required this.imgString});

  @override
  Widget build(BuildContext context) {
    return AppAssetImage(
      imagePath: imgString!,
      size: 270,
    );
  }
}
