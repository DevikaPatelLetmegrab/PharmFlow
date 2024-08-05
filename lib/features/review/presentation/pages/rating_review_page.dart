import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:pharm_flow/core/app_extension/text_style_extension.dart';
import 'package:pharm_flow/core/utils/app_size.dart';
import 'package:pharm_flow/core/widget/common_app_bar.dart';

import 'package:pharm_flow/core/config/app_colors.dart';
import 'package:pharm_flow/core/config/app_dimension.dart';
import 'package:pharm_flow/features/review/presentation/pages/product_review_page.dart';

class RatingReviewPage extends StatefulWidget {
  const RatingReviewPage({super.key});

  @override
  State<RatingReviewPage> createState() => _RatingReviewPageState();
}

class _RatingReviewPageState extends State<RatingReviewPage>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    // TODO: implement initState
    tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(
        title: 'My Rating & Reviews',
        bottom: PreferredSize(
          preferredSize: Size(context.getWidth, context.h(50)),
          child: TabBar(
              controller: tabController,
              unselectedLabelStyle: context.md14.withGrey78,
              labelStyle: context.md14.withPrimary,
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorWeight: 4,
              dividerColor: AppColors.greyE6Color,
              tabs: [
                Tab(
                  child: const Text('Product Review'),
                ),
                Tab(
                  child: Text('Store Review'),
                ),
              ]),
        ),
      ),
      body: TabBarView(
        controller: tabController,
        children: [
          ProductReviewPage(),
          ProductReviewPage(),
        ],
      ),
    );
  }
}
