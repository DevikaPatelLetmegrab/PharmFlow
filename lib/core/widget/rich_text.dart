import 'package:flutter/material.dart';
import 'package:pharm_flow/core/app_extension/text_style_extension.dart';

class CommonRichText extends StatelessWidget {
  final String title;
  final String subtitle;

  const CommonRichText({
    super.key,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(text: title, style: context.md14.weigh400, children: [
        TextSpan(text: subtitle, style: context.md14.weigh300.withGrey78)
      ]),
    );
  }
}
