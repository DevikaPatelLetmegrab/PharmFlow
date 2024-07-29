import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:pharm_flow/core/app_extension/text_style_extension.dart';
import 'package:pharm_flow/core/config/app_assets.dart';
import 'package:pharm_flow/core/config/app_colors.dart';
import 'package:pharm_flow/core/config/app_dimension.dart';
import 'package:pharm_flow/core/utils/app_size.dart';
import 'package:pharm_flow/core/widget/app_asset_image.dart';
import 'package:pharm_flow/core/widget/app_bottosheet_widget.dart';
import 'package:pharm_flow/core/widget/app_icon_button.dart';
import 'package:pharm_flow/core/widget/common_app_bar.dart';
import 'package:pharm_flow/features/order/presentation/pages/all_order_page.dart';
import 'package:pharm_flow/features/order/presentation/widgets/order_filter_sheet.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({super.key});

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    // TODO: implement initState
    tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(
        title: 'Your Orders',
        showLeading: false,
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
                  child: Row(
                    children: [
                      const Text('All Order'),
                      const Gap(AppDimens.space5),
                      Container(
                        height: context.h(20),
                        width: context.w(20),
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle, color: AppColors.primary),
                        child: Center(
                          child: Text(
                            '39',
                            style: context.s12.withWhite,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Tab(
                  child: Row(
                    children: [
                      const Text('Delivered'),
                      const Gap(AppDimens.space5),
                      Container(
                        height: context.h(20),
                        width: context.w(20),
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppColors.grey78Color),
                        child: Center(
                          child: Text(
                            '29',
                            style: context.s12.withWhite,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Tab(
                  child: Row(
                    children: [
                      const Text('Pending'),
                      const Gap(AppDimens.space5),
                      Container(
                        height: context.h(20),
                        width: context.w(20),
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppColors.grey78Color),
                        child: Center(
                          child: Text(
                            '29',
                            style: context.s12.withWhite,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ]),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: AppDimens.space8),
            child: AppIconButton(
              imagePath: AppAssets.orderFilterIcon,
              onTap: () {
                AppBottomSheet().show(child: const OrderFilterSheet());
              },
            ),
          )
        ],
      ),
      body: TabBarView(
        controller: tabController,
        children: const [
          AllOrderPage(),
          AllOrderPage(),
          AllOrderPage(),
        ],
      ),
    );
  }
}
