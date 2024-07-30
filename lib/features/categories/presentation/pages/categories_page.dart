import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:pharm_flow/core/app_extension/text_style_extension.dart';
import 'package:pharm_flow/core/config/app_colors.dart';
import 'package:pharm_flow/core/config/app_dimension.dart';
import 'package:pharm_flow/core/utils/app_size.dart';
import 'package:pharm_flow/core/widget/common_app_bar.dart';
import 'package:pharm_flow/features/categories/presentation/widgets/categories_grid_item.dart';
import 'package:pharm_flow/features/categories/presentation/widgets/categories_list_item.dart';

class CategoriesPage extends StatelessWidget {
  const CategoriesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CommonAppBar(title: 'Categories'),
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: context.w(120),
            child: ListView.separated(
              itemCount: 10,
              padding: const EdgeInsets.symmetric(vertical: AppDimens.space15),
              separatorBuilder: (context, index) => const SizedBox(
                height: AppDimens.space50,
                child: Divider(
                  color: AppColors.greyD9Color,
                  height: 2,
                ),
              ),
              itemBuilder: (context, index) {
                return CategoryListItem(index: index);
              },
            ),
          ),
          Container(
            color: AppColors.skyBlue,
            width: 3,
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(AppDimens.space15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Prescription Medications',
                      style: context.x16.weigh500.withPrimary,
                    ),
                    const Gap(AppDimens.space5),
                    Text(
                      '348 Items',
                      style: context.s12.withGrey78,
                    ),
                    const Gap(AppDimens.space10),
                    Text(
                      'Antibiotics',
                      style: context.md14.weigh500.withPrimary,
                    ),
                    const Gap(AppDimens.space10),
                    GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        childAspectRatio: 9 / 11,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                      ),
                      shrinkWrap: true,
                      physics: const ClampingScrollPhysics(),
                      itemCount: 6,
                      padding: EdgeInsets.zero,
                      itemBuilder: (context, index) {
                        return CategoriesGridItem(index: index);
                      },
                    ),
                    const Gap(AppDimens.space10),
                    Text(
                      'Antidepressants',
                      style: context.md14.weigh500.withPrimary,
                    ),
                    const Gap(AppDimens.space10),
                    GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        childAspectRatio: 9 / 11,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                      ),
                      shrinkWrap: true,
                      physics: const ClampingScrollPhysics(),
                      itemCount: 6,
                      padding: EdgeInsets.zero,
                      itemBuilder: (context, index) {
                        return CategoriesGridItem(index: index);
                      },
                    ),
                    const Gap(AppDimens.space10),
                    Text(
                      'Bronchodilators',
                      style: context.md14.weigh500.withPrimary,
                    ),
                    const Gap(AppDimens.space10),
                    GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        childAspectRatio: 9 / 11,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                      ),
                      shrinkWrap: true,
                      physics: const ClampingScrollPhysics(),
                      itemCount: 6,
                      padding: EdgeInsets.zero,
                      itemBuilder: (context, index) {
                        return CategoriesGridItem(index: index);
                      },
                    ),
                    const Gap(AppDimens.space10),
                    Text(
                      'Antiemetics',
                      style: context.md14.weigh500.withPrimary,
                    ),
                    const Gap(AppDimens.space10),
                    GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        childAspectRatio: 9 / 11,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                      ),
                      shrinkWrap: true,
                      physics: const ClampingScrollPhysics(),
                      itemCount: 6,
                      padding: EdgeInsets.zero,
                      itemBuilder: (context, index) {
                        return CategoriesGridItem(index: index);
                      },
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
