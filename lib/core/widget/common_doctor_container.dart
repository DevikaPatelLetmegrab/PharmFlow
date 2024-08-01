import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:pharm_flow/core/app_extension/text_style_extension.dart';
import 'package:pharm_flow/core/config/app_assets.dart';
import 'package:pharm_flow/core/config/app_colors.dart';
import 'package:pharm_flow/core/config/app_dimension.dart';
import 'package:pharm_flow/core/utils/app_size.dart';
import 'package:pharm_flow/core/widget/app_asset_image.dart';
import 'package:pharm_flow/core/widget/common_imageview.dart';
import 'package:pharm_flow/core/widget/common_label.dart';
import 'package:pharm_flow/core/widget/common_rating_bar.dart';

class CommonDoctorContainer extends StatelessWidget {
  final String name;
  final String? location;
  final double imageHeight;
  final double imageWidth;
  final String? label;
  final String? title;
  final String? phoneNumber;

  const CommonDoctorContainer(
      {super.key,
      required this.name,
      this.location,
      this.imageHeight = 80,
      this.imageWidth = 80,
      this.label,
      this.title,
      this.phoneNumber});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CommonImageview(
          imageType: ImageType.asset,
          imagePath: AppAssets.doctorImage,
          height: context.h(imageHeight),
          width: context.w(imageWidth),
          fit: BoxFit.cover,
        ),
        const Gap(AppDimens.space10),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              if (label != null) ...[
                CommonLabel(
                  imagePath: AppAssets.verifyIcon,
                  content: label!,
                ),
                const Gap(AppDimens.space5),
              ],
              if (title != null) ...[
                Text(
                  title!,
                  style: context.md14.withPrimary,
                ),
                const Gap(AppDimens.space5),
              ],
              Text(
                name,
                style: context.x16.withBlack,
              ),
              const Gap(AppDimens.space5),
              IntrinsicHeight(
                child: Row(
                  children: [
                    CommonRatingBar(rate: 5),
                    const Gap(AppDimens.space5),
                    const VerticalDivider(
                      thickness: 2,
                      color: AppColors.greyD9Color,
                    ),
                    const Gap(AppDimens.space5),
                    Text(
                      '20,100 Reviews',
                      style: context.md14.withGrey78,
                    ),
                  ],
                ),
              ),
              const Gap(AppDimens.space5),
              if (phoneNumber != null) ...[
                Row(
                  children: [
                    AppAssetImage(
                      imagePath: AppAssets.callIcon,
                      size: 20,
                    ),
                    const Gap(AppDimens.space5),
                    SizedBox(
                      width: context.getWidth * 0.57,
                      child: Text(
                        phoneNumber!,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: context.s12.withGrey78,
                      ),
                    ),
                  ],
                )
              ],
              const Gap(AppDimens.space5),
              if (location != null) ...[
                Row(
                  children: [
                    AppAssetImage(
                      imagePath: AppAssets.locationIcon,
                      size: AppDimens.imageSize20,
                    ),
                    const Gap(AppDimens.space5),
                    Expanded(
                      child: Text(
                        location!,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: context.s12.withGrey78,
                      ),
                    ),
                  ],
                )
              ]
            ],
          ),
        ),
      ],
    );
  }
}
