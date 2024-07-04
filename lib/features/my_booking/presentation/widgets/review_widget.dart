import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:gap/gap.dart';
import 'package:pharm_flow/core/app_extension/text_style_extension.dart';
import 'package:pharm_flow/core/config/app_assets.dart';
import 'package:pharm_flow/core/config/app_colors.dart';
import 'package:pharm_flow/core/config/app_dimension.dart';
import 'package:pharm_flow/core/utils/app_size.dart';
import 'package:pharm_flow/core/utils/squircle/squircle_container.dart';
import 'package:pharm_flow/core/widget/app_asset_image.dart';
import 'package:pharm_flow/core/widget/app_popup_menu.dart';
import 'package:pharm_flow/core/widget/common_rating_bar.dart';

class ReviewWidget extends StatelessWidget {
  const ReviewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: 10,
      itemBuilder: (context, index) {
        return const SingleReviewWidget();
      },
      separatorBuilder: (BuildContext context, int index) {
        return const Divider(
          color: AppColors.greyD9Color,
        );
      },
    );
  }
}

class SingleReviewWidget extends StatelessWidget {
  const SingleReviewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Squircle(
      borderColor: AppColors.transparent,
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  AppAssetImage(imagePath: AppAssets.image),
                  Gap(AppDimens.space10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Courtney Henry',
                        style: context.md14.withBlack,
                      ),
                      Row(
                        children: [
                         CommonRatingBar(rate: 5),
                          const Gap(AppDimens.space5),
                          Text(
                            '2 mins ago',
                            style: context.md14.withGrey33.weigh300,
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
              const Gap(AppDimens.space10),
              SizedBox(
                width: context.getWidth,
                child: Text(
                  'Consequat velit qui adipisicing sunt do rependerit ad laborum tempor ullamco exercitation. Ullamco tempor adipisicing et voluptate duis sit esse aliqua',
                  style: context.md14.withGrey33.weigh300,
                ),
              ),
              const Gap(AppDimens.space10),
            ],
          ),
          Align(alignment: Alignment.topRight, child: AppPopupMenu(items: []))
        ],
      ),
    );
  }
}
