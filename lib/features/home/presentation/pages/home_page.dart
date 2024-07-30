import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:pharm_flow/core/config/app_assets.dart';
import 'package:pharm_flow/core/config/app_colors.dart';
import 'package:pharm_flow/core/config/app_dimension.dart';
import 'package:pharm_flow/core/routes/app_routes.dart';
import 'package:pharm_flow/core/routes/navigation_services.dart';
import 'package:pharm_flow/core/utils/app_constants.dart';
import 'package:pharm_flow/core/utils/app_size.dart';
import 'package:pharm_flow/core/utils/squircle/squircle_container.dart';
import 'package:pharm_flow/core/widget/app_asset_image.dart';
import 'package:pharm_flow/core/widget/common_column_view.dart';
import 'package:pharm_flow/features/home/presentation/bloc/counter_cubit_home.dart';
import 'package:pharm_flow/features/home/presentation/widgets/category_listview_item.dart';
import 'package:pharm_flow/features/home/presentation/widgets/consult_pageview.dart';
import 'package:pharm_flow/features/home/presentation/widgets/lab_gridview_item.dart';
import 'package:pharm_flow/features/home/presentation/widgets/launch_listview_item.dart';
import 'package:pharm_flow/features/home/presentation/widgets/resource_listview_item.dart';
import 'package:pharm_flow/features/home/presentation/widgets/row_overview.dart';
import 'package:pharm_flow/features/home/presentation/widgets/testimonial_listview_item.dart';
import 'package:pharm_flow/features/home/presentation/widgets/top_view.dart';
import 'package:pharm_flow/features/home/presentation/widgets/upload_prescription.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  static List<String> imgList = [
    AppAssets.image1,
    AppAssets.image1,
    AppAssets.image1
  ];

  List<Color> colorList = [
    AppColors.blueLight,
    AppColors.pinkLight,
  ];

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CounterCubitHome(),
      child: BlocBuilder<CounterCubitHome, CurrentPageHomeState>(
        builder: (context, state) {
          return Scaffold(
            body: SingleChildScrollView(
              child: Column(
                children: [
                  const TopView(),
                  SizedBox(
                    height: context.h(120),
                    child: ListView.separated(
                      itemCount: 10,
                      scrollDirection: Axis.horizontal,
                      padding: const EdgeInsets.symmetric(
                          horizontal: AppDimens.space15),
                      separatorBuilder: (context, index) {
                        return const SizedBox(width: 10);
                      },
                      itemBuilder: (context, index) {
                        return CategoriesListviewItem(
                          img: AppAssets.imageD,
                        );
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(AppDimens.space15),
                    child: Column(
                      children: [
                        const ConsultPageview(),
                        const Gap(AppDimens.space20),
                        const UploadPrescription(),
                        const Gap(AppDimens.space20),
                        RowOverview(
                          title: 'popular categories',
                          ontap: () {
                            NavigationServices()
                                .pushName(AppRoutes.categoriesPage);
                          },
                        ),
                        const Gap(AppDimens.space10),
                        GridView.builder(
                          itemCount: 12,
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            childAspectRatio: context.w(77) / context.h(112),
                            crossAxisCount: 4,
                            mainAxisSpacing: 0,
                            crossAxisSpacing: 10,
                          ),
                          itemBuilder: (context, index) {
                            return CategoriesListviewItem(
                              img: AppAssets.image2,
                            );
                          },
                        ),
                        const Gap(AppDimens.space20),
                        const RowOverview(title: 'New Launch'),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: context.h(221),
                    child: ListView.separated(
                      itemCount: 5,
                      scrollDirection: Axis.horizontal,
                      padding: const EdgeInsets.symmetric(
                          horizontal: AppDimens.space15),
                      separatorBuilder: (context, index) {
                        return const SizedBox(width: 10);
                      },
                      itemBuilder: (context, index) {
                        return LaunchListviewItem(
                          img: AppAssets.image2,
                        );
                      },
                    ),
                  ),
                  const Gap(AppDimens.space5),
                  Padding(
                    padding: const EdgeInsets.all(AppDimens.space15),
                    child: Column(
                      children: [
                        const RowOverview(title: 'Featured brands'),
                        const Gap(AppDimens.space15),
                        GridView.builder(
                          itemCount: 12,
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            childAspectRatio: context.w(77) / context.h(123),
                            crossAxisCount: 4,
                            mainAxisSpacing: 0,
                            crossAxisSpacing: 10,
                          ),
                          itemBuilder: (context, index) {
                            return CategoriesListviewItem(
                              img: AppAssets.image2,
                              text: 'Johnson & Johnson',
                            );
                          },
                        ),
                        const Gap(AppDimens.space20),
                        const RowOverview(title: 'top selling products'),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: context.h(221),
                    child: ListView.separated(
                      itemCount: 5,
                      scrollDirection: Axis.horizontal,
                      padding: const EdgeInsets.symmetric(
                          horizontal: AppDimens.space15),
                      separatorBuilder: (context, index) {
                        return const SizedBox(width: 10);
                      },
                      itemBuilder: (context, index) {
                        return LaunchListviewItem(
                          img: AppAssets.image2,
                        );
                      },
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(AppDimens.space15),
                    child: RowOverview(title: 'seasonal products'),
                  ),
                  SizedBox(
                    height: context.h(221),
                    child: ListView.separated(
                      itemCount: 5,
                      scrollDirection: Axis.horizontal,
                      padding: const EdgeInsets.symmetric(
                          horizontal: AppDimens.space15),
                      separatorBuilder: (context, index) {
                        return const SizedBox(width: 10);
                      },
                      itemBuilder: (context, index) {
                        return LaunchListviewItem(
                          img: AppAssets.image2,
                        );
                      },
                    ),
                  ),
                  const Gap(AppDimens.space5),
                  Padding(
                    padding: const EdgeInsets.all(AppDimens.space15),
                    child: Column(
                      children: [
                        const RowOverview(title: 'Book lab test'),
                        const Gap(AppDimens.space20),
                        GridView.builder(
                          itemCount: 4,
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            childAspectRatio: context.w(77) / context.h(75),
                            crossAxisCount: 2,
                            mainAxisSpacing: 12,
                            crossAxisSpacing: 12,
                          ),
                          itemBuilder: (context, index) {
                            var color = (index % 4 == 0 || (index % 4 == 3))
                                ? colorList.first
                                : colorList.last;
                            return LabGridviewItem(
                              bgColor: color,
                              isLab: true,
                            );
                          },
                        ),
                        const Gap(AppDimens.space20),
                        const RowOverview(title: 'Why Choose Us'),
                        const Gap(AppDimens.space20),
                        GridView.builder(
                          itemCount: AppConstants.chooseList.length,
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            childAspectRatio: context.w(77) / context.h(90),
                            crossAxisCount: 2,
                            mainAxisSpacing: 12,
                            crossAxisSpacing: 12,
                          ),
                          itemBuilder: (context, index) {
                            return Squircle(
                              radius: 20,
                              padding: const EdgeInsets.all(AppDimens.space8),
                              child: CommonColumnView(
                                imagePath: AppConstants.chooseList[index].image,
                                title: AppConstants.chooseList[index].title,
                                content: AppConstants.chooseList[index].content,
                              ),
                            );
                          },
                        ),
                        const Gap(AppDimens.space20),
                        const RowOverview(title: 'Testimonials'),
                        //  const Gap(AppDimens.space20),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: context.h(136),
                    child: ListView.separated(
                      itemCount: 5,
                      scrollDirection: Axis.horizontal,
                      padding: const EdgeInsets.symmetric(
                          horizontal: AppDimens.space15),
                      separatorBuilder: (context, index) {
                        return const SizedBox(width: 10);
                      },
                      itemBuilder: (context, index) {
                        return const TestimonialListviewItem();
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(AppDimens.space15),
                    child: Column(
                      children: [
                        const Gap(AppDimens.space10),
                        AppAssetImage(
                          imagePath: AppAssets.discountImg,
                          height: 180,
                        ),
                        const Gap(AppDimens.space20),
                        const RowOverview(title: 'Deal of the Day')
                      ],
                    ),
                  ),
                  SizedBox(
                    height: context.h(221),
                    child: ListView.separated(
                      itemCount: 5,
                      scrollDirection: Axis.horizontal,
                      padding: const EdgeInsets.symmetric(
                          horizontal: AppDimens.space15),
                      separatorBuilder: (context, index) {
                        return const SizedBox(width: 10);
                      },
                      itemBuilder: (context, index) {
                        return LaunchListviewItem(
                          img: AppAssets.image2,
                        );
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(AppDimens.space15),
                    child: Column(
                      children: [
                        const Gap(AppDimens.space5),
                        const RowOverview(title: 'Book Appointment'),
                        const Gap(AppDimens.space20),
                        GridView.builder(
                          itemCount: 2,
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            childAspectRatio: context.w(77) / context.h(75),
                            crossAxisCount: 2,
                            mainAxisSpacing: 12,
                            crossAxisSpacing: 12,
                          ),
                          itemBuilder: (context, index) {
                            var color = (index % 4 == 0 || (index % 4 == 3))
                                ? colorList.first
                                : colorList.last;
                            return LabGridviewItem(
                              bgColor: color,
                              isLab: false,
                            );
                          },
                        ),
                        const Gap(AppDimens.space20),
                        const RowOverview(title: 'Health Resources & Blog'),
                        const Gap(AppDimens.space5),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: context.h(220),
                    child: ListView.separated(
                      itemCount: 2,
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      padding: const EdgeInsets.symmetric(
                          horizontal: AppDimens.space15),
                      separatorBuilder: (context, index) =>
                          const Gap(AppDimens.space18),
                      itemBuilder: (context, index) {
                        return const ResourceListviewItem(isBlog: true);
                      },
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(AppDimens.space15),
                    child: RowOverview(
                      title: 'near by medical store',
                    ),
                  ),
                  const Gap(AppDimens.space5),
                  SizedBox(
                    height: context.h(200),
                    child: ListView.separated(
                      itemCount: 2,
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      padding: const EdgeInsets.symmetric(
                          horizontal: AppDimens.space15),
                      separatorBuilder: (context, index) =>
                          const Gap(AppDimens.space18),
                      itemBuilder: (context, index) {
                        return const ResourceListviewItem(isBlog: false);
                      },
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(AppDimens.space15),
                    child: RowOverview(
                      title: 'recently viewed ',
                    ),
                  ),
                  const Gap(AppDimens.space5),
                  SizedBox(
                    height: context.h(221),
                    child: ListView.separated(
                      itemCount: 5,
                      scrollDirection: Axis.horizontal,
                      padding: const EdgeInsets.symmetric(
                          horizontal: AppDimens.space15),
                      separatorBuilder: (context, index) {
                        return const SizedBox(width: 10);
                      },
                      itemBuilder: (context, index) {
                        return LaunchListviewItem(
                          img: AppAssets.image2,
                        );
                      },
                    ),
                  ),
                  const Gap(AppDimens.space20),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
