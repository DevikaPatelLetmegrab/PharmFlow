import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:pharm_flow/core/app_extension/text_style_extension.dart';
import 'package:pharm_flow/core/config/app_assets.dart';
import 'package:pharm_flow/core/config/app_dimension.dart';
import 'package:pharm_flow/core/widget/app_asset_image.dart';

class BrandListviewItem extends StatelessWidget {
  const BrandListviewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 65,
      child: Column(
        children: [
          AppAssetImage(
            imagePath: AppAssets.imageD,
            height: 65,
            width: 65,
          ),
          Gap(AppDimens.space5),
          Text(
            'Johnson & Johnson',
            style: context.s12,
            textAlign: TextAlign.center,
            maxLines: 2,
          ),
        ],
      ),
    );
  }
}
