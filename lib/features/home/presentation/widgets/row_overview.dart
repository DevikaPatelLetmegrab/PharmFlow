import 'package:flutter/material.dart';
import 'package:pharm_flow/core/app_extension/text_style_extension.dart';

class RowOverview extends StatelessWidget {
  final String? title;
  const RowOverview({super.key, this.title = ''});

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
          child: Text(
            'See All',
            style: context.md14.withPrimary,
          ),
        )
      ],
    );
  }
}
