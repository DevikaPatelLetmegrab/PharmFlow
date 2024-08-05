import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:pharm_flow/core/app_extension/text_style_extension.dart';
import 'package:pharm_flow/core/config/app_assets.dart';
import 'package:pharm_flow/core/config/app_dimension.dart';
import 'package:pharm_flow/core/widget/app_asset_image.dart';

class CategoriesListviewItem extends StatelessWidget {
  const CategoriesListviewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppAssetImage(
          imagePath: AppAssets.imageD,
          height: 80,
          width: 80,
        ),
        Text(
          'Pain Relief',
          style: context.s12,
          textAlign: TextAlign.center,
          maxLines: 2,
        ),
      ],
    );
  }
}
