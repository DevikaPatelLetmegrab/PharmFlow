import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:pharm_flow/core/app_extension/text_style_extension.dart';
import 'package:pharm_flow/core/config/app_assets.dart';
import 'package:pharm_flow/core/config/app_colors.dart';
import 'package:pharm_flow/core/config/app_dimension.dart';
import 'package:pharm_flow/core/utils/app_size.dart';
import 'package:pharm_flow/core/utils/squircle/squircle_container.dart';
import 'package:pharm_flow/core/widget/app_asset_image.dart';
import 'package:pharm_flow/core/widget/app_option_menu_button.dart';
import 'package:pharm_flow/core/widget/asset_icon.dart';
import 'package:pharm_flow/core/widget/round_icon.dart';
import 'package:pharm_flow/features/brand/presentation/widgets/brand_listview_item.dart';
import 'package:pharm_flow/features/home/presentation/widgets/row_overview.dart';

class CommunityPage extends StatelessWidget {
  const CommunityPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(AppDimens.space15),
            child: RowOverview(
              title: 'Browse by',
              subTitleWidget: Row(
                children: [
                  Text(
                    "Trending",
                    style: context.md14.withPrimary,
                  ),
                  Gap(AppDimens.space5),
                  AssetIcon(
                    assetName: AppAssets.filterIcon,
                    size: AppDimens.imageSize18,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: context.h(102),
            child: ListView.separated(
              itemCount: 8,
              scrollDirection: Axis.horizontal,
              padding:
                  const EdgeInsets.symmetric(horizontal: AppDimens.space15),
              separatorBuilder: (context, index) {
                return const SizedBox(width: 10);
              },
              itemBuilder: (context, index) {
                return BrandListviewItem();
              },
            ),
          ),
          Gap(AppDimens.space15),
          Expanded(
            child: ListView.separated(
              itemCount: 5,
              padding:
                  const EdgeInsets.symmetric(horizontal: AppDimens.space15),
              separatorBuilder: (context, index) {
                return Gap(AppDimens.space15);
              },
              itemBuilder: (context, index) {
                return Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: AppColors.greyD9Color),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [
                      ListTile(
                        leading: CircleAvatar(
                          backgroundImage: AssetImage(
                            AppAssets.map,
                          ),
                          radius: context.w(25),
                          backgroundColor: AppColors.primary,
                        ),
                        title: Text('Dito Ramadhan'),
                        subtitle: Text('Jakarta, Indonesia'),
                        trailing: AppOptionMenuButton(
                          items: [
                            PopupMenuItem(child: Text('data')),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: AppDimens.space15),
                        child: Column(
                          children: [
                            Text(
                              'Donec eleifend hendrerit purus et dignissim. Nunc lacinia lorem ut eros scelerisque, quis semper felis accumsan.',
                            ),
                            Gap(AppDimens.space10),
                            Text(
                              '#dummy #crypto #swiss #blockchain #schweiz #suisse ',
                            ),
                            Gap(AppDimens.space10),
                            Squircle(
                              borderColor: AppColors.transparent,
                              child: AppAssetImage(
                                imagePath: AppAssets.image1,
                                width: context.getWidth,
                                height: 150,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Gap(AppDimens.space10),
                            Row(
                              children: [],
                            )
                          ],
                        ),
                      ),
                      Gap(AppDimens.space10),
                    ],
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
