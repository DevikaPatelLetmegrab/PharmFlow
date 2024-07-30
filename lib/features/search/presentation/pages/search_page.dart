import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:pharm_flow/core/app_extension/text_style_extension.dart';
import 'package:pharm_flow/core/config/app_assets.dart';
import 'package:pharm_flow/core/config/app_colors.dart';
import 'package:pharm_flow/core/config/app_dimension.dart';
import 'package:pharm_flow/core/utils/app_size.dart';
import 'package:pharm_flow/core/widget/app_asset_image.dart';
import 'package:pharm_flow/core/widget/app_search_field.dart';
import 'package:pharm_flow/core/widget/asset_icon.dart';
import 'package:pharm_flow/core/widget/common_app_bar.dart';
import 'package:pharm_flow/features/home/presentation/widgets/launch_listview_item.dart';
import 'package:pharm_flow/features/home/presentation/widgets/row_overview.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CommonAppBar(title: 'Search'),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: AppDimens.space15),
              child: Column(
                children: [
                  AppSearchField(
                    hint: 'Search',
                    readOnly: true,
                    showSuffix: true,
                    // suffix: AssetIcon(
                    //   assetName: AppAssets.filterIcon,
                    //   size: AppDimens.imageSize20,
                    //   color: AppColors.lightPrimary,
                    // ),
                  ),
                  const Gap(AppDimens.space20),
                  ListView.separated(
                    itemCount: 5,
                    shrinkWrap: true,
                    separatorBuilder: (context, index) =>
                        const SizedBox(height: AppDimens.space10),
                    itemBuilder: (context, index) {
                      return ListTile(
                        titleAlignment: ListTileTitleAlignment.top,
                        leading: AppAssetImage(
                          imagePath: AppAssets.imageD,
                          width: AppDimens.imageSize40,
                        ),
                        title: Text(
                          'Nivea Nivea Shower Gel Waterlily & Oil',
                          style: context.md14,
                        ),
                        subtitle: Text(
                          'bottle of 125 Ml gel',
                          style: context.s12.weigh500.withPrimary,
                        ),
                        trailing: AssetIcon(
                          assetName: AppAssets.searchCallIcon,
                          size: AppDimens.imageSize10,
                        ),
                      );
                    },
                  ),
                  const Gap(AppDimens.space20),
                  AppAssetImage(
                    imagePath: AppAssets.discountImg,
                    height: 180,
                  ),
                  const Gap(AppDimens.space20),
                  const RowOverview(title: 'top selling products')
                ],
              ),
            ),
            const Gap(AppDimens.space15),
            SizedBox(
              height: context.h(221),
              child: ListView.separated(
                itemCount: 5,
                scrollDirection: Axis.horizontal,
                padding:
                    const EdgeInsets.symmetric(horizontal: AppDimens.space15),
                separatorBuilder: (context, index) {
                  return const SizedBox(width: 10);
                },
                itemBuilder: (context, index) {
                  return LaunchListviewItem(
                    img: AppAssets.image2,
                  );
                },
              ),
            ),
            const Gap(AppDimens.space15),
          ],
        ),
      ),
    );
  }
}
