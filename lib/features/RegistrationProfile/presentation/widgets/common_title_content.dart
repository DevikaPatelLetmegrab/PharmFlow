import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:pharm_flow/core/app_extension/text_style_extension.dart';

import '../../../../core/config/app_dimension.dart';

class CommonTitleContent extends StatelessWidget {
  final String title;
  final String content;

  const CommonTitleContent(
      {super.key, required this.title, required this.content});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: context.x20.withBlack.weigh400,
        ),
        Gap(AppDimens.space10),
        Text(
          content,
          style: context.md14.withGrey78.weigh400,
        ),
      ],
    );
  }
}
