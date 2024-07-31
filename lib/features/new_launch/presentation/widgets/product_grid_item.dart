import 'package:flutter/material.dart';
import 'package:pharm_flow/core/app_extension/text_style_extension.dart';
import 'package:pharm_flow/core/config/app_assets.dart';
import 'package:pharm_flow/core/config/app_colors.dart';
import 'package:pharm_flow/core/config/app_dimension.dart';
import 'package:pharm_flow/core/utils/squircle/squircle_container.dart';
import 'package:pharm_flow/core/widget/app_asset_image.dart';
import 'package:pharm_flow/core/widget/common_rating_bar.dart';

class ProductGridItem extends StatelessWidget {
  const ProductGridItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Squircle(
          radius: 20,
          backgroundColor: AppColors.greyF4Color,
          borderColor: AppColors.greyF4Color,
          child: AppAssetImage(
            imagePath: AppAssets.image2,
            fit: BoxFit.cover,
            size: 150,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppDimens.space10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Nivea Men Shower Gel for Body, Skin & Hair',
                style: context.md14,
              ),
              CommonRatingBar(
                rate: 3.5,
                showRateText: true,
              ),
              RichText(
                text: TextSpan(
                  text: '₹245.00',
                  style: context.md14.withBlack,
                  children: const [
                    WidgetSpan(
                      child: SizedBox(width: AppDimens.space10),
                    ),
                    TextSpan(
                      text: '₹345.00',
                      style: TextStyle(
                        color: AppColors.grey78Color,
                        decoration: TextDecoration.lineThrough,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
