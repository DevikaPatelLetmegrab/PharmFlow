import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:pharm_flow/core/app_extension/text_style_extension.dart';
import 'package:pharm_flow/core/config/app_assets.dart';
import 'package:pharm_flow/core/config/app_colors.dart';
import 'package:pharm_flow/core/config/app_dimension.dart';
import 'package:pharm_flow/core/utils/app_constants.dart';
import 'package:pharm_flow/core/utils/app_size.dart';
import 'package:pharm_flow/core/widget/app_asset_image.dart';
import 'package:pharm_flow/core/widget/app_textform_field.dart';
import 'package:pharm_flow/core/widget/input_chip_widget.dart';
import 'package:pharm_flow/features/help_and_support/presentation/pages/contact_us_tabview.dart';
import 'package:pharm_flow/features/help_and_support/presentation/pages/faq_account_tabview_item.dart';
import 'package:pharm_flow/features/help_and_support/presentation/pages/faq_all_tabview_item.dart';
import 'package:pharm_flow/features/help_and_support/presentation/pages/faq_general_tabview_item.dart';
import 'package:pharm_flow/features/help_and_support/presentation/pages/faq_services_tabview_item.dart';

class FaqTabview extends StatefulWidget {
  const FaqTabview({super.key});

  @override
  State<FaqTabview> createState() => _FaqTabviewState();
}

class _FaqTabviewState extends State<FaqTabview>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    // TODO: implement initState
    tabController = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          child: Column(
            children: [
              AppTextFormField(
                prefixIcon: AppAssetImage(imagePath: AppAssets.searchIcon),
                hint: "Search",
              ),
              const Gap(AppDimens.space15),
              ButtonsTabBar(
                radius: 10,
                controller: tabController,
                backgroundColor: AppColors.primary,
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: AppDimens.space30),
                unselectedBackgroundColor: AppColors.greyF4Color,
                unselectedLabelStyle: const TextStyle(
                    color: AppColors.blackColor,
                    fontSize: 14,
                    fontFamily: 'Lexend'),
                labelStyle: const TextStyle(
                    color: AppColors.whiteColor,
                    fontSize: 14,
                    fontFamily: 'Lexend'),
                tabs: const [
                  Tab(
                    text: 'All',
                  ),
                  Tab(
                    text: 'Services',
                  ),
                  Tab(
                    text: 'General',
                  ),
                  Tab(
                    text: 'Account',
                  ),
                ],
              ),
              const Gap(AppDimens.space15),
              SizedBox(
                height: context.getHeight,
                child: TabBarView(
                  controller: tabController,
                  children: const [
                    FaqAllTabviewItem(),
                    FaqServicesTabviewItem(),
                    FaqGeneralTabviewItem(),
                    FaqAccountTabviewItem(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
