import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:pharm_flow/core/app_extension/text_style_extension.dart';
import 'package:pharm_flow/core/config/app_colors.dart';
import 'package:pharm_flow/core/config/app_dimension.dart';
import 'package:pharm_flow/core/utils/app_size.dart';
import 'package:pharm_flow/core/widget/app_asset_image.dart';

class LaunchListviewItem extends StatelessWidget {
  final String? img;

  const LaunchListviewItem({super.key, this.img});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.getWidth / 2.5,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: context.getWidth / 2.5,
            height: context.h(154),
            decoration: BoxDecoration(
              color: AppColors.greyE8Color,
              borderRadius: BorderRadius.circular(AppDimens.circleRadius20),
            ),
            child: AppAssetImage(
              imagePath: img!,
              size: 100,
            ),
          ),
          Text(
            'Nivea Men Shower Gel for Body, Skin & Hair',
            maxLines: 2,
            textAlign: TextAlign.start,
            style: context.md14,
          ),
          const Gap(AppDimens.space10),
          RichText(
            text: TextSpan(
              text: '₹245.00',
              style: context.md14.withBlack,
              children: const [
                WidgetSpan(child: Gap(AppDimens.space5)),
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
    );
  }
}
