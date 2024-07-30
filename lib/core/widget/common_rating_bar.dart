import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:gap/gap.dart';
import 'package:pharm_flow/core/config/app_assets.dart';
import 'package:pharm_flow/core/config/app_dimension.dart';
import 'package:pharm_flow/core/widget/app_asset_image.dart';

class CommonRatingBar extends StatelessWidget {
  final double rate;
  bool showRateText;

  CommonRatingBar({super.key, required this.rate, this.showRateText = false});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        RatingBar(
          ignoreGestures: true,
          glow: false,
          itemSize: 15,
          initialRating: rate,
          direction: Axis.horizontal,
          allowHalfRating: false,
          itemCount: 5,
          ratingWidget: RatingWidget(
            full: AppAssetImage(
              imagePath: AppAssets.starFill,
            ),
            half: AppAssetImage(
              imagePath: AppAssets.starEmpty,
            ),
            empty: AppAssetImage(
              imagePath: AppAssets.starEmpty,
            ),
          ),
          onRatingUpdate: (rating) {},
        ),
        if (showRateText) ...[
          const Gap(AppDimens.space5),
          Text(rate.toString())
        ]
      ],
    );
  }
}
