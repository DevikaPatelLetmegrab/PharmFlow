import 'package:flutter/cupertino.dart';
import 'package:gap/gap.dart';
import 'package:pharm_flow/core/app_extension/text_style_extension.dart';
import 'package:pharm_flow/core/config/app_assets.dart';
import 'package:pharm_flow/core/config/app_colors.dart';
import 'package:pharm_flow/core/config/app_dimension.dart';
import 'package:pharm_flow/core/utils/app_size.dart';
import 'package:pharm_flow/core/widget/asset_icon.dart';

class TestimonialListviewItem extends StatelessWidget {
  const TestimonialListviewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.getWidth / 1.4,
      child: Container(
        padding: const EdgeInsets.all(AppDimens.space15),
        decoration: BoxDecoration(
          color: AppColors.greyF4Color,
          borderRadius: BorderRadius.circular(AppDimens.circleRadius20),
        ),
        child: Column(
          children: [
            Text(
              'Lorem ipsum dolor sit amet consectetur. Cum sagittis sagittis sed est magna at eget dictum. ',
              style: context.md14.weigh300,
            ),
            const Gap(AppDimens.space15),
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(AppDimens.space5),
                  decoration: BoxDecoration(
                    color: AppColors.greyD9Color,
                    borderRadius:
                        BorderRadius.circular(AppDimens.circleRadius20),
                  ),
                  child: AssetIcon(assetName: AppAssets.peopleIcon),
                ),
                const Gap(AppDimens.space10),
                const Text('Kierra Westervelt'),
                const Spacer(),
                AssetIcon(
                  assetName: AppAssets.quoteIcon,
                  color: AppColors.greyD9Color,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
