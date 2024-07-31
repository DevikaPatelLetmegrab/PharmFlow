import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:pharm_flow/core/config/app_assets.dart';
import 'package:pharm_flow/core/config/app_colors.dart';
import 'package:pharm_flow/core/config/app_dimension.dart';
import 'package:pharm_flow/core/utils/app_size.dart';
import 'package:pharm_flow/core/widget/app_search_field.dart';
import 'package:pharm_flow/core/widget/asset_icon.dart';
import 'package:pharm_flow/core/widget/common_app_bar.dart';
import 'package:pharm_flow/features/brand/presentation/widgets/brand_listview_item.dart';
import 'package:pharm_flow/features/home/presentation/widgets/categories_listview_item.dart';
import 'package:pharm_flow/features/new_launch/presentation/widgets/product_grid_item.dart';

class BrandPage extends StatelessWidget {
  const BrandPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(title: 'Featured brands'),
      body: Column(
        children: [
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
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(AppDimens.space15),
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 5.3 / 7,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 20,
                ),
                shrinkWrap: true,
                physics: const ScrollPhysics(),
                itemCount: 6,
                padding: EdgeInsets.zero,
                itemBuilder: (context, index) {
                  return const ProductGridItem();
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
