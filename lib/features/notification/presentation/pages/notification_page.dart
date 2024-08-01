import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:pharm_flow/core/app_extension/text_style_extension.dart';
import 'package:pharm_flow/core/config/app_assets.dart';
import 'package:pharm_flow/core/config/app_colors.dart';
import 'package:pharm_flow/core/config/app_dimension.dart';
import 'package:pharm_flow/core/utils/squircle/squircle_container.dart';
import 'package:pharm_flow/core/widget/common_app_bar.dart';
import 'package:pharm_flow/core/widget/round_icon.dart';
import 'package:pharm_flow/features/notification/presentation/widgets/notification_item.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CommonAppBar(
        title: 'Notification',
        showLeading: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(AppDimens.space16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Today',
                style: context.md14.withBlack,
              ),
              const Gap(AppDimens.space10),
              ListView.separated(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 3,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  if (index == 0) {
                    return Squircle(
                      borderColor: AppColors.primary,
                      child: Column(
                        children: [
                          const Gap(AppDimens.space1),
                          ListTile(
                            dense: true,
                            leading: RoundIcon(
                                radius: AppDimens.borderRadius20,
                                iconPadding:
                                    const EdgeInsets.all(AppDimens.space5),
                                iconPath: AppAssets.calendarIconBlue,
                                iconSize: AppDimens.imageSize24,
                                backgroundColor: AppColors.blueEFColor),
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
                                left: AppDimens.space340,
                                bottom: AppDimens.space5),
                            child: Text(
                              'Just now',
                              style: context.s12.withPrimary,
                            ),
                          ),
                        ],
                      ),
                    );
                  } else {
                    return const NotificationItem();
                  }
                },
                separatorBuilder: (BuildContext context, int index) {
                  return const Gap(AppDimens.space16);
                },
              ),
              const Gap(AppDimens.space10),
              Text(
                'Yesterday',
                style: context.md14.withBlack,
              ),
              const Gap(AppDimens.space10),
              ListView.separated(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 5,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return const NotificationItem();
                },
                separatorBuilder: (BuildContext context, int index) {
                  return const Gap(AppDimens.space16);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
