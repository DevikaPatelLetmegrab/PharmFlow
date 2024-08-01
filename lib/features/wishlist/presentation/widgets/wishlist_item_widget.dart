import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pharm_flow/core/config/app_assets.dart';
import 'package:pharm_flow/core/config/app_colors.dart';
import 'package:pharm_flow/core/config/app_dimension.dart';
import 'package:pharm_flow/core/utils/app_size.dart';
import 'package:pharm_flow/core/widget/app_asset_image.dart';
import 'package:pharm_flow/core/widget/app_eleveted_button.dart';
import 'package:pharm_flow/core/widget/common_rating_bar.dart';
import 'package:gap/gap.dart';
import 'package:pharm_flow/core/app_extension/text_style_extension.dart';

class WishlistItemWidget extends StatelessWidget {
  const WishlistItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                color: AppColors.greyD9Color.withOpacity(0.3),
                blurStyle: BlurStyle.outer,
                blurRadius: 17,
                spreadRadius: 0)
          ],
          border: Border.all(color: AppColors.greyD9Color),
          borderRadius: BorderRadius.circular(AppDimens.borderRadius10)),
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AppAssetImage(
                imagePath: AppAssets.img,
                size: context.h(65),
                fit: BoxFit.cover,
              ),
              const Gap(AppDimens.space15),
              Text(
                'Ciprofloxacin',
                style: context.md14.weigh500,
              ),
              const Gap(AppDimens.space5),
              Text(
                '500 mg',
                style: context.s12.withDarkGrey,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '₹ 139',
                    style: context.x16.weigh500,
                  ),
                  const Gap(AppDimens.space5),
                  Text(
                    '₹ 200',
                    style: context.s12.redLineThrough.withRed,
                  ),
                ],
              ),
              CommonRatingBar(
                rate: 4.0,
                showRateText: true,
              ),
              const Gap(AppDimens.space15),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: AppDimens.space20),
                child: AppButton(
                  height: context.h(40),
                  borderRadius: BorderRadius.circular(AppDimens.borderRadius15),
                  width: context.getWidth,
                  buttonName: 'Move to Cart',
                  buttonType: ButtonType.elevated,
                  fontSize: 12,
                ),
              )
            ],
          ),
          const Padding(
            padding: EdgeInsets.all(AppDimens.space8),
            child: Align(
              alignment: Alignment.topRight,
              child: Icon(
                CupertinoIcons.heart_fill,
                color: AppColors.red,
              ),
            ),
          )
        ],
      ),
    );
  }
}
