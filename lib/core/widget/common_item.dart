import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:pharm_flow/core/app_extension/text_style_extension.dart';
import 'package:pharm_flow/core/config/app_dimension.dart';

class CommonItem extends StatelessWidget {
  final String title;
  final String content;

  const CommonItem({
    super.key,
    required this.title,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '${title} : ',
              style: context.md14.withGrey78,
            ),
            Expanded(
                child: Text(
                  content,
                  style: context.md14.withBlack,
                )),
          ],
        ),
        const Gap(AppDimens.space5),
      ],
    );
  }
}