import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:pharm_flow/core/app_extension/text_style_extension.dart';
import 'package:pharm_flow/core/config/app_colors.dart';
import 'package:pharm_flow/core/config/app_dimension.dart';

class WorkingHourWidget extends StatelessWidget {
  const WorkingHourWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CommonRowTime(
          title: 'Monday',
          content: '10:00 AM - 10:00 PM',
        ),
        const Gap(AppDimens.space5),
        CommonRowTime(
          title: 'Tuesday',
          content: '10:00 AM - 10:00 PM',
        ),
        const Gap(AppDimens.space5),
        CommonRowTime(
          title: 'Wednesday',
          content: '10:00 AM - 10:00 PM',
        ),
        const Gap(AppDimens.space5),
        CommonRowTime(
          title: 'Thursday',
          content: '10:00 AM - 10:00 PM',
        ),
        const Gap(AppDimens.space5),
        CommonRowTime(
          title: 'Friday',
          content: '10:00 AM - 10:00 PM',
        ),
        const Gap(AppDimens.space5),
        CommonRowTime(
          title: 'Saturday',
          content: '10:00 AM - 10:00 PM',
        ),
        const Gap(AppDimens.space5),
        CommonRowTime(
          title: 'Sunday',
          content: '10:00 AM - 10:00 PM',
        )
      ],
    );
  }
}

class CommonRowTime extends StatelessWidget {
  final String title;
  final String content;
  Color? titleColor;
  Color? contentColor;

  CommonRowTime(
      {super.key,
      required this.title,
      required this.content,
      this.titleColor,
      this.contentColor});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: context.md14.weigh400
              .copyWith(color: titleColor ?? AppColors.grey78Color),
        ),
        Text(content,
            style: context.md14.weigh400
                .copyWith(color: contentColor ?? AppColors.blackColor)),
      ],
    );
  }
}
