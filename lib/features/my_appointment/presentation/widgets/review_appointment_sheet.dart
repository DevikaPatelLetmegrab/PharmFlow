import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:gap/gap.dart';
import 'package:pharm_flow/core/app_extension/text_style_extension.dart';
import 'package:pharm_flow/core/config/app_assets.dart';
import 'package:pharm_flow/core/config/app_dimension.dart';
import 'package:pharm_flow/core/widget/app_asset_image.dart';

class ReviewAppointmentSheet extends StatelessWidget {
  const ReviewAppointmentSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Gap(AppDimens.space10),
        Text(
          'Share your Feedback',
          style: context.x18,
        ),
        const Gap(AppDimens.space20),
        RatingBar.builder(
          itemBuilder: (context, index) {
            switch (index) {
              case 0:
                return AppAssetImage(imagePath: AppAssets.badFeedbackIcon);
              case 1:
                return const Icon(
                  Icons.sentiment_dissatisfied,
                  color: Colors.redAccent,
                );
              case 2:
                return const Icon(
                  Icons.sentiment_neutral,
                  color: Colors.amber,
                );
              case 3:
                return Icon(
                  Icons.sentiment_satisfied,
                  color: Colors.lightGreen,
                );
              case 4:
                return Icon(
                  Icons.sentiment_very_satisfied,
                  color: Colors.green,
                );
              default:
                return Icon(
                  Icons.sentiment_very_satisfied,
                  color: Colors.green,
                );
            }
          },
          onRatingUpdate: (rating) {
            print(rating);
          },
        )
      ],
    );
  }
}
