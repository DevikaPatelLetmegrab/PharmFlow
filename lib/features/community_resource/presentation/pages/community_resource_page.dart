import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:pharm_flow/core/app_extension/text_style_extension.dart';
import 'package:pharm_flow/core/config/app_colors.dart';
import 'package:pharm_flow/core/config/app_dimension.dart';
import 'package:pharm_flow/core/utils/app_size.dart';
import 'package:pharm_flow/core/widget/common_app_bar.dart';

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
      appBar: CommonAppBar(),
      body: Column(
        children: [
          TabBar(
            controller: tabController,
            unselectedLabelStyle: context.md14.withGrey78,
            labelStyle: context.md14.withPrimary,
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorWeight: 4,
            dividerColor: AppColors.greyE6Color,
            tabs: const [
              Tab(
                text: 'Doctor',
              ),
              Tab(
                text: 'Medical',
              ),
            ],
          ),
          const Gap(AppDimens.space12),
          SizedBox(
            height: context.getHeight * 0.67,
            child: TabBarView(
              controller: tabController,
              children: const [
                SizedBox(),
                SizedBox(),
              ],
            ),
          ),
          /* DefaultTabController(
            length: 2,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  // ignore: prefer_const_literals_to_create_immutables
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20), color: Colors.red),
                    child: TabBar(
                      indicator: BoxDecoration(
                        color: Colors.red[800],
                        borderRadius: BorderRadius.circular(20),
                      ),
                      labelColor: Colors.black,
                      dividerColor: Colors.black,
                      // ignore: prefer_const_literals_to_create_immutables
                      tabs: [
                        Tab(
                          icon: Icon(
                            Icons.add_box,
                            color: Colors.black,
                          ),
                        ),
                        Tab(
                          icon: Icon(
                            Icons.video_call,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: TabBarView(children: [
                      SizedBox(),
                      SizedBox(),
                      // MyPostTab(),
                      // MyReelsTab(),
                      // MyTagTab(),
                    ]),
                  )
                ],
              ),
            ),
          ),*/
        ],
      ),
    );
  }
}
