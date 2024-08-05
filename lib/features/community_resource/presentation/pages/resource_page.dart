import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:pharm_flow/core/app_extension/text_style_extension.dart';
import 'package:pharm_flow/core/config/app_dimension.dart';
import 'package:pharm_flow/core/routes/app_routes.dart';
import 'package:pharm_flow/core/routes/navigation_services.dart';
import 'package:pharm_flow/core/utils/app_size.dart';
import 'package:pharm_flow/features/brand/presentation/widgets/brand_listview_item.dart';
import 'package:pharm_flow/features/community_resource/presentation/widgets/resource_list_item.dart';
import 'package:pharm_flow/features/home/presentation/widgets/resource_listview_item.dart';

class ResourcePage extends StatelessWidget {
  const ResourcePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(AppDimens.space15),
              child: Text(
                'Resources Category',
                style: context.md14,
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
                  return const BrandListviewItem();
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(AppDimens.space15),
              child: Text(
                'Our blog',
                style: context.x16.weigh500,
              ),
            ),
            SizedBox(
              height: context.h(220),
              child: ListView.separated(
                itemCount: 2,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                padding:
                    const EdgeInsets.symmetric(horizontal: AppDimens.space15),
                separatorBuilder: (context, index) =>
                    const Gap(AppDimens.space18),
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      NavigationServices().pushName(AppRoutes.blogDetailPage);
                    },
                    child: const ResourceListviewItem(isBlog: true),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(AppDimens.space15),
              child: Text(
                'Our articles ',
                style: context.x16.weigh500,
              ),
            ),
            ListView.separated(
              itemCount: 5,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              padding:
                  const EdgeInsets.symmetric(horizontal: AppDimens.space15),
              separatorBuilder: (context, index) {
                return const Gap(AppDimens.space15);
              },
              itemBuilder: (context, index) {
                return const ResourceListItem();
              },
            ),
            const Gap(AppDimens.space15),
          ],
        ),
      ),
    );
  }
}
