import 'package:flutter/material.dart';
import 'package:pharm_flow/core/app_extension/text_style_extension.dart';

class RowOverview extends StatelessWidget {
  final String? title;
  final VoidCallback? ontap;
  final Widget? subTitleWidget;
  const RowOverview(
      {super.key, this.title = '', this.ontap, this.subTitleWidget});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title ?? '',
          style: context.x16,
        ),
        InkWell(
          onTap: ontap,
          child: subTitleWidget ??
              Text(
                'See All',
                style: context.md14.withPrimary,
              ),
        )
      ],
    );
  }
}
