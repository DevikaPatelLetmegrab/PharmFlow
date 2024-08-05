import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:pharm_flow/core/app_extension/text_style_extension.dart';
import 'package:pharm_flow/core/config/app_assets.dart';
import 'package:pharm_flow/core/config/app_dimension.dart';
import 'package:pharm_flow/core/utils/app_size.dart';
import 'package:pharm_flow/core/widget/asset_icon.dart';
import 'package:pharm_flow/features/brand/presentation/widgets/brand_listview_item.dart';
import 'package:pharm_flow/features/community_resource/presentation/widgets/community_list_item.dart';
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
                return CommunityListItem();
              },
            ),
          )
        ],
      ),
    );
  }
}
