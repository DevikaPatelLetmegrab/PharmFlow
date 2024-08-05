import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:pharm_flow/core/app_extension/text_style_extension.dart';
import 'package:pharm_flow/core/config/app_assets.dart';
import 'package:pharm_flow/core/config/app_colors.dart';
import 'package:pharm_flow/core/config/app_dimension.dart';
import 'package:pharm_flow/core/utils/app_size.dart';
import 'package:pharm_flow/core/widget/app_asset_image.dart';
import 'package:pharm_flow/core/widget/app_textform_field.dart';
import 'package:pharm_flow/core/widget/common_app_bar.dart';
import 'package:pharm_flow/features/help_and_support/presentation/pages/contact_us_tabview.dart';
import 'package:pharm_flow/features/help_and_support/presentation/pages/faq_tabview.dart';

class HelpAndSupportPage extends StatefulWidget {
  const HelpAndSupportPage({super.key});

  @override
  State<HelpAndSupportPage> createState() => _HelpAndSupportPageState();
}

class _HelpAndSupportPageState extends State<HelpAndSupportPage>
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
        title: 'Help & Support',
        bottom: PreferredSize(
          preferredSize: Size(context.getWidth, context.h(50)),
          child: TabBar(
            controller: tabController,
            unselectedLabelStyle: context.md14.withGrey78,
            labelStyle: context.md14.withPrimary,
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorWeight: 4,
            dividerColor: AppColors.greyE6Color,
            tabs: const [
              Tab(
                text: 'FAQ',
              ),
              Tab(
                text: 'Contact us',
              ),
            ],
          ),
        ),
      ),
      body: TabBarView(
        controller: tabController,
        children: const [
          FaqTabview(),
          ContactUsTabview(),
        ],
      ),
    );
  }
}
