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
import 'package:pharm_flow/features/my_booking/presentation/pages/doctor_tab_view.dart';
import 'package:pharm_flow/features/my_booking/presentation/pages/medical_tab_view.dart';

class BookingPage extends StatefulWidget {
  const BookingPage({super.key});

  @override
  State<BookingPage> createState() => _BookingPageState();
}

class _BookingPageState extends State<BookingPage>
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
      appBar: const CommonAppBar(
        title: 'Bookings',
        showLeading: false,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppDimens.space16),
          child: Column(
            children: [
              AppTextFormField(
                prefixIcon: AppAssetImage(imagePath: AppAssets.searchIcon),
                hint: "Search Doctor/Medical",
              ),
              Gap(AppDimens.space10),
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
                    DoctorTabView(),
                    MedicalTabView(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
