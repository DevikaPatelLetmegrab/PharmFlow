import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:pharm_flow/core/app_extension/text_style_extension.dart';
import 'package:pharm_flow/core/config/app_colors.dart';
import 'package:pharm_flow/core/config/app_dimension.dart';
import 'package:pharm_flow/core/utils/app_size.dart';
import 'package:pharm_flow/core/widget/app_asset_image.dart';

class CommonLabel extends StatelessWidget {
  final String imagePath;
  final String content;

  const CommonLabel(
      {super.key, required this.imagePath, required this.content});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.w(175),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppDimens.borderRadius40),
          color: AppColors.lightBlue),
      child: Padding(
        padding: const EdgeInsets.all(AppDimens.space5),
        child: Row(
          children: [
            AppAssetImage(
              imagePath: imagePath,
              size: AppDimens.imageSize20,
            ),
            const Gap(AppDimens.space10),
            Text(
              content,
              style: context.s12.withPrimary,
            )
          ],
        ),
      ),
    );
  }
}
