import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:pharm_flow/core/app_extension/text_style_extension.dart';
import 'package:pharm_flow/core/config/app_colors.dart';
import 'package:pharm_flow/core/config/app_dimension.dart';
import 'package:pharm_flow/core/widget/common_app_bar.dart';
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
                  return NotificationItem(
                    index: index,
                    borderColor:
                        index == 0 ? AppColors.primary : AppColors.greyD9Color,
                  );
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
                  return NotificationItem(
                    index: index = 1,
                    borderColor:
                        index == 0 ? AppColors.primary : AppColors.greyD9Color,
                  );
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
