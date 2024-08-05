import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:pharm_flow/core/app_extension/text_style_extension.dart';
import 'package:pharm_flow/core/config/app_assets.dart';
import 'package:pharm_flow/core/config/app_dimension.dart';
import 'package:pharm_flow/core/utils/squircle/squircle_container.dart';
import 'package:pharm_flow/core/widget/app_asset_image.dart';

class ResourceListItem extends StatelessWidget {
  const ResourceListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Squircle(
          child: AppAssetImage(
            imagePath: AppAssets.map,
            height: 80,
            width: 90,
            fit: BoxFit.cover,
          ),
        ),
        const Gap(AppDimens.space10),
        Expanded(
          child: Column(
            children: [
              Text(
                'Understanding Common Over-the-Counter Medications',
                style: context.md14.weigh500,
                maxLines: 2,
              ),
              const Gap(AppDimens.space5),
              Text(
                'is your go-to source for clear and concise information.',
                style: context.s12.weigh300.withGrey78,
              )
            ],
          ),
        )
      ],
    );
  }
}
