import 'package:emoji_rating_bar/emoji_rating_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:gap/gap.dart';
import 'package:pharm_flow/core/app_extension/text_style_extension.dart';
import 'package:pharm_flow/core/config/app_assets.dart';
import 'package:pharm_flow/core/config/app_dimension.dart';
import 'package:pharm_flow/core/routes/navigation_services.dart';
import 'package:pharm_flow/core/widget/app_asset_image.dart';
import 'package:pharm_flow/core/widget/app_textform_field.dart';
import 'package:pharm_flow/core/widget/confirmation_button.dart';

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
        EmojiRatingBar(
            list: [
              EmojiData(
                  AppAssets.badFeedbackIcon, // project asset images
                  "Bad"),
              EmojiData(
                  AppAssets.poorFeedbackIcon, // project asset images
                  "Poor"),
              EmojiData(
                  AppAssets.mediumFeedbackIcon, // project asset images
                  "Medium"),
              EmojiData(
                  AppAssets.goodFeedbackIcon, // project asset images
                  "Good"),
              EmojiData(
                  AppAssets.excellentFeedbackIcon, // project asset images
                  "Excellent")
            ],
            rating: 2,
            onRateChange: (rating) {
              print(rating);
            },
            isReadOnly: false,
            spacing: 30,
            size: 45,
            selectedSize: 45,
            isShowTitle: true,
            isShowDivider: false,
            titleStyle: context.s10,
            selectedTitleStyle: context.s10,
            ratingBarType: RatingBarType.feedback,
            applyColorFilter: true),
        const Gap(AppDimens.space20),
        AppTextFormField(
          hint: 'Write Here..',
          maxLines: 5,
        ),
        const Gap(AppDimens.space30),
        ConfirmationButton(
            positiveText: 'Submit',
            negativeText: 'Cancel',
            onNegativeClick: () {
              NavigationServices().pop();
            })
      ],
    );
  }
}
