import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:pharm_flow/core/config/app_assets.dart';
import 'package:pharm_flow/core/config/app_colors.dart';
import 'package:pharm_flow/core/config/app_dimension.dart';
import 'package:pharm_flow/core/utils/app_constants.dart';
import 'package:pharm_flow/core/utils/app_size.dart';
import 'package:pharm_flow/core/widget/app_search_field.dart';
import 'package:pharm_flow/core/widget/asset_icon.dart';
import 'package:pharm_flow/core/widget/common_app_bar.dart';
import 'package:pharm_flow/features/home/presentation/widgets/categories_listview_item.dart';
import 'package:pharm_flow/features/home/presentation/widgets/sub_category_listview_item.dart';

class CategoriesSeeAllPage extends StatelessWidget {
  const CategoriesSeeAllPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(title: 'Antibiotics'),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: AppDimens.space15),
            child: AppSearchField(
              hint: 'Search',
              readOnly: true,
              showSuffix: true,
              suffix: AssetIcon(
                assetName: AppAssets.filterIcon,
                size: AppDimens.imageSize20,
                color: AppColors.lightPrimary,
              ),
              onTap: () {
                //NavigationServices().pushName(AppRoutes.searchPage);
              },
            ),
          ),
          Gap(AppDimens.space10),
          SizedBox(
            height: context.h(101),
            child: ListView.separated(
              itemCount: 5,
              scrollDirection: Axis.horizontal,
              padding:
                  const EdgeInsets.symmetric(horizontal: AppDimens.space15),
              separatorBuilder: (context, index) {
                return const SizedBox(width: 10);
              },
              itemBuilder: (context, index) {
                return CategoriesListviewItem();
              },
            ),
          ),
        ],
      ),
    );
  }
}