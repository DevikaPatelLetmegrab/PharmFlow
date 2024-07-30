import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:pharm_flow/core/app_extension/text_style_extension.dart';
import 'package:pharm_flow/core/config/app_assets.dart';
import 'package:pharm_flow/core/config/app_colors.dart';
import 'package:pharm_flow/core/config/app_dimension.dart';
import 'package:pharm_flow/core/widget/round_icon.dart';

class CategoryListItem extends StatelessWidget {
  final int index;
  const CategoryListItem({super.key, this.index = 0});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.centerLeft,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            RoundIcon(
              iconPath: AppAssets.image1,
              iconSize: 80,
              radius: 20,
            ),
            const Gap(AppDimens.space10),
            Text(
              'Prescription Medications',
              style: context.s12.weigh500,
              textAlign: TextAlign.center,
            )
          ],
        ),
        Visibility(
          visible: index == 0,
          child: Container(
            height: 90,
            width: 10,
            decoration: const BoxDecoration(
              color: AppColors.primary,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(AppDimens.circleRadius15),
                bottomRight: Radius.circular(AppDimens.circleRadius15),
              ),
            ),
          ),
        )
      ],
    );
  }
}
