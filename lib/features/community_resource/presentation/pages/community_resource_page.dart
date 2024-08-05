import 'package:flutter/material.dart';
import 'package:pharm_flow/core/config/app_colors.dart';
import 'package:pharm_flow/core/config/app_dimension.dart';
import 'package:pharm_flow/core/widget/common_app_bar.dart';
import 'package:pharm_flow/features/community_resource/presentation/pages/community_page.dart';
import 'package:pharm_flow/features/community_resource/presentation/pages/resource_page.dart';

class CommunityResourcePage extends StatefulWidget {
  const CommunityResourcePage({super.key});

  @override
  State<CommunityResourcePage> createState() => _CommunityResourcePageState();
}

class _CommunityResourcePageState extends State<CommunityResourcePage>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CommonAppBar(),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: AppDimens.space15),
            child: Container(
              height: 45,
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: AppColors.greyD9Color),
              ),
              child: TabBar(
                controller: tabController,
                indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: AppColors.primary,
                ),
                labelColor: Colors.white,
                unselectedLabelColor: Colors.black,
                dividerColor: AppColors.transparent,
                indicatorSize: TabBarIndicatorSize.tab,
                tabs: const [
                  Tab(
                    text: 'community',
                  ),
                  Tab(
                    text: 'resources',
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: tabController,
              children: const [
                CommunityPage(),
                ResourcePage(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
