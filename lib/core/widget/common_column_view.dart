import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:pharm_flow/core/app_extension/text_style_extension.dart';
import 'package:pharm_flow/core/config/app_dimension.dart';
import 'package:pharm_flow/core/widget/app_asset_image.dart';
import 'package:pharm_flow/core/widget/round_icon.dart';

class CommonColumnView extends StatelessWidget {
  final String imagePath;
  final String title;
  final String content;

  const CommonColumnView(
      {super.key,
      required this.imagePath,
      required this.title,
      required this.content});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        RoundIcon(
          bgopacity: 0.1,
          radius: 22,
          iconPath: imagePath,
        ),
        const Gap(AppDimens.space5),
        Text(
          title,
          style: context.x16.withBlack,
        ),
        const Gap(AppDimens.space5),
        Text(
          content,
          style: context.x16.withGrey78,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
