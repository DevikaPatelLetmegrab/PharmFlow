import 'package:flutter/material.dart';
import 'package:pharm_flow/core/app_extension/text_style_extension.dart';
import 'package:pharm_flow/core/config/app_dimension.dart';
import 'package:pharm_flow/core/utils/app_size.dart';

import 'package:pharm_flow/core/config/app_assets.dart';
import 'package:pharm_flow/core/config/app_colors.dart';
import 'package:pharm_flow/core/widget/square_icon.dart';

class CommonRow extends StatelessWidget {
  final PageController controller;

  const CommonRow({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          left: AppDimens.space16,
          right: AppDimens.space16,
          top: AppDimens.space16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {
              controller.previousPage(
                  duration: Duration(microseconds: 300), curve: Curves.easeIn);
            },
            child: SquareIcon(
              backgroundColor: AppColors.lightBlue,
              iconPath: AppAssets.backArrow,
            ),
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
      ),
    );
  }
}
