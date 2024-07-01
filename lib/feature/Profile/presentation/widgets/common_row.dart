import 'package:flutter/material.dart';
import 'package:pharm_flow/core/app_extension/text_style_extension.dart';
import 'package:pharm_flow/core/utils/app_size.dart';

import '../../../../core/config/app_assets.dart';
import '../../../../core/config/app_colors.dart';
import '../../../../core/widget/round_icon.dart';

class CommonRow extends StatelessWidget {
  const CommonRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        RoundIcon(
          backgroundColor: AppColors.lightBlue,
          iconPath: AppAssets.backArrow,
        ),
        Container(
          height: context.h(8),
          width: context.w(205),
          decoration: BoxDecoration(
              color: AppColors.lightBlue,
              borderRadius: BorderRadius.circular(10)),
          child: Align(
            alignment: Alignment.topLeft,
            child: Container(
              height: context.h(8),
              width: context.w(40),
              decoration: BoxDecoration(
                  color: AppColors.primary,
                  borderRadius: BorderRadius.circular(10)),
            ),
          ),
        ),
        Text(
          'Skip',
          style: context.x16.withBlack.weigh400,
        )
      ],
    );
  }
}
