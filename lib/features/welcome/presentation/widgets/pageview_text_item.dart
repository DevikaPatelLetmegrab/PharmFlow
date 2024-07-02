import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:pharm_flow/core/app_extension/text_style_extension.dart';
import 'package:pharm_flow/core/config/app_dimension.dart';

class PageviewTextItem extends StatelessWidget {
  final String? title;
  final String? description;
  const PageviewTextItem(
      {super.key, @required this.title, @required this.description});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title ?? '',
          style: context.x22,
          textAlign: TextAlign.center,
        ),
        const Gap(AppDimens.space10),
        Text(
          description ?? '',
          style: context.md14.weigh300,
          textAlign: TextAlign.center,
        )
      ],
    );
  }
}
