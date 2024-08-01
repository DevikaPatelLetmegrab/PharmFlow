import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:pharm_flow/core/app_extension/text_style_extension.dart';
import 'package:pharm_flow/core/config/app_dimension.dart';
import 'package:pharm_flow/core/utils/app_size.dart';
import 'package:pharm_flow/core/widget/common_app_bar.dart';
import 'package:pharm_flow/features/my_appointment/presentation/pages/cancelled_appointment_page.dart';
import 'package:pharm_flow/features/my_appointment/presentation/pages/completed_appointment_page.dart';
import 'package:pharm_flow/features/my_appointment/presentation/pages/upcoming_appointment_page.dart';

import 'package:pharm_flow/core/config/app_colors.dart';

class MyAppointmentPage extends StatefulWidget {
  const MyAppointmentPage({super.key});

  @override
  State<MyAppointmentPage> createState() => _MyAppointmentPageState();
}

class _MyAppointmentPageState extends State<MyAppointmentPage>
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
        title: 'My Appointment',
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
                      const Text('Upcoming'),
                      const Gap(AppDimens.space5),
                      Container(
                        height: context.h(20),
                        width: context.w(20),
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle, color: AppColors.primary),
                        child: Center(
                          child: Text(
                            '20',
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
                      const Text('Completed'),
                      const Gap(AppDimens.space5),
                      Container(
                        height: context.h(20),
                        width: context.w(20),
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppColors.grey78Color),
                        child: Center(
                          child: Text(
                            '05',
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
                      const Text('Cancelled'),
                      const Gap(AppDimens.space5),
                      Container(
                        height: context.h(20),
                        width: context.w(20),
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppColors.grey78Color),
                        child: Center(
                          child: Text(
                            '05',
                            style: context.s12.withWhite,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ]),
        ),
      ),
      body: TabBarView(
        controller: tabController,
        children: [
          UpcomingAppointmentPage(),
          CompletedAppointmentPage(),
          CancelledAppointmentPage(),
        ],
      )
    );
  }
}
