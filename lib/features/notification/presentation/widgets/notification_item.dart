import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pharm_flow/core/app_extension/text_style_extension.dart';
import 'package:pharm_flow/core/config/app_assets.dart';
import 'package:pharm_flow/core/config/app_colors.dart';
import 'package:pharm_flow/core/config/app_dimension.dart';
import 'package:pharm_flow/core/utils/squircle/squircle_container.dart';
import 'package:pharm_flow/core/widget/round_icon.dart';

class NotificationItem extends StatelessWidget {
  const NotificationItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Squircle(
      borderColor: AppColors.greyD9Color,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ListTile(
            dense: true,
            leading: RoundIcon(
                radius: AppDimens.borderRadius20,
                iconPadding: const EdgeInsets.all(AppDimens.space5),
                iconPath: AppAssets.calendarIconGrey,
                iconSize: AppDimens.imageSize24,
                backgroundColor: AppColors.greyECColor),
            title: Text(
              'Appointment success',
              style: context.md14.weigh400.withBlack,
            ),
            subtitle: Text(
              'Your appointment has been successfully scheduled. Please mark your calendar for july 12 at 11:30 AM. ',
              style: context.s12.weigh300.withGrey78,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                right: AppDimens.space12, bottom: AppDimens.space5),
            child: Text(
              '2 Min',
              style: context.s12.withGrey78,
            ),
          ),
        ],
      ),
    );
  }
}
