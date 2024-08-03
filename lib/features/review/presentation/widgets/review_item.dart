import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:pharm_flow/core/app_extension/text_style_extension.dart';
import 'package:pharm_flow/core/config/app_assets.dart';
import 'package:pharm_flow/core/config/app_colors.dart';
import 'package:pharm_flow/core/config/app_dimension.dart';
import 'package:pharm_flow/core/utils/app_dialogs.dart';
import 'package:pharm_flow/core/widget/app_popup_menu.dart';
import 'package:pharm_flow/core/widget/asset_icon.dart';
import 'package:pharm_flow/core/widget/common_rating_bar.dart';

class ReviewItem extends StatelessWidget {
  const ReviewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          visualDensity: VisualDensity.compact,
          contentPadding: EdgeInsets.zero,
          leading: CircleAvatar(
            radius: 14,
            backgroundColor: AppColors.whiteColor,
            backgroundImage: AssetImage(AppAssets.reviewMedicine1),
          ),
          title: Text(
            'Dr. Reckeweg R42 Hae',
            style: context.md14,
          ),
          subtitle: Row(
            children: [
              CommonRatingBar(rate: 5),
              const Gap(AppDimens.space5),
              Text(
                '2 mins ago',
                style: context.s12.weigh300.withGrey33,
              )
            ],
          ),
          trailing: AppPopupMenu(
            constraints: const BoxConstraints(maxHeight: AppDimens.space80),
            items: [
              PopupMenuItem(
                height: AppDimens.space30,
                child: Row(
                  children: [
                    AssetIcon(
                      assetName: AppAssets.editIcon,
                      size: AppDimens.imageSize20,
                      color: AppColors.blackColor,
                    ),
                    const Gap(AppDimens.space5),
                    Text(
                      'Edit Review',
                      style: context.x16.weigh400,
                    ),
                  ],
                ),
              ),
              PopupMenuItem(
                height: AppDimens.space30,
                onTap: () {
                  AppDialogs.confirmationDialog(
                      confirmationTitle:
                      'Do You Want to Remove this Review?');
                },
                child: Row(
                  children: [
                    AssetIcon(
                      assetName: AppAssets.closeCircleIcon,
                      size: AppDimens.imageSize20,
                      color: AppColors.blackColor,
                    ),
                    const Gap(AppDimens.space5),
                    Text(
                      'Delete Review',
                      style: context.x16.weigh400,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        Text(
          'Consequat velit qui adipisicing sunt do rependerit ad laborum tempor ullamco exercitation. Ullamco tempor adipisicing et voluptate duis sit esse aliqua',
          style: context.s12.weigh300.withGrey33,
        )
      ],
    );
  }
}
