import 'package:flutter/cupertino.dart';
import 'package:gap/gap.dart';
import 'package:pharm_flow/core/app_extension/text_style_extension.dart';
import 'package:pharm_flow/core/config/app_assets.dart';
import 'package:pharm_flow/core/config/app_dimension.dart';
import 'package:pharm_flow/core/utils/app_size.dart';
import 'package:pharm_flow/core/widget/app_asset_image.dart';
import 'package:pharm_flow/core/widget/asset_icon.dart';

class ResourceListviewItem extends StatelessWidget {
  final bool isBlog;
  const ResourceListviewItem({super.key, this.isBlog = true});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.getWidth / 1.6,
      child: isBlog
          ? Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.circular(AppDimens.circleRadius20),
                  ),
                  child: AppAssetImage(
                    imagePath: AppAssets.discountImg,
                    fit: BoxFit.fill,
                  ),
                ),
                const Gap(AppDimens.space5),
                Text(
                  'Understanding Common Over-the-Counter Medications',
                  style: context.md14,
                ),
                const Gap(AppDimens.space5),
                Text(
                  'is your go-to source for clear and concise information on non-prescription drugs.',
                  style: context.s12.weigh300,
                )
              ],
            )
          : Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.circular(AppDimens.circleRadius20),
                  ),
                  child: AppAssetImage(
                    imagePath: AppAssets.discountImg,
                    fit: BoxFit.fill,
                  ),
                ),
                const Gap(AppDimens.space5),
                Text('new medical shop', style: context.md14),
                Row(
                  children: [
                    AssetIcon(assetName: AppAssets.locationIcon),
                    Text('Ambika Niketan, Athwalines, Surat, Gujarat 395007')
                  ],
                )
              ],
            ),
    );
  }
}
