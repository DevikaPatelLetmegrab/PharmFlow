import 'package:flutter/material.dart';
import 'package:pharm_flow/core/app_extension/text_style_extension.dart';
import 'package:pharm_flow/core/widget/app_asset_image.dart';

class CategoriesListviewItem extends StatelessWidget {
  final double? height;
  final double? width;
  final String? img;
  final String? text;
  const CategoriesListviewItem(
      {super.key,
      this.height = 100,
      this.width = 100,
      @required this.img,
      this.text = 'medicines'});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppAssetImage(
          imagePath: img!,
          height: height,
          width: width,
        ),
        Text(
          text!,
          style: context.s12,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
