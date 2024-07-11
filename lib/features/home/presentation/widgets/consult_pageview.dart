import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pharm_flow/core/config/app_assets.dart';
import 'package:pharm_flow/core/config/app_colors.dart';
import 'package:pharm_flow/core/utils/app_size.dart';
import 'package:pharm_flow/core/widget/app_asset_image.dart';
import 'package:pharm_flow/features/home/presentation/bloc/counter_cubit_home.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ConsultPageview extends StatelessWidget {
  const ConsultPageview({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CounterCubitHome, CurrentPageHomeState>(
      builder: (context, state) {
        return Column(
          children: [
            SizedBox(
              height: 200,
              child: PageView(
                controller: context.read<CounterCubitHome>().pageController,
                children: [
                  AppAssetImage(
                    imagePath: AppAssets.image1,
                    width: context.getWidth,
                  ),
                  AppAssetImage(
                    imagePath: AppAssets.image1,
                    width: context.getWidth,
                  ),
                  AppAssetImage(
                    imagePath: AppAssets.image1,
                    width: context.getWidth,
                  ),
                ],
                onPageChanged: (index) {
                  context.read<CounterCubitHome>().changeIndex(index);
                },
              ),
            ),
            SmoothPageIndicator(
              controller: context.read<CounterCubitHome>().pageController,
              count: 3,
              effect: const ScrollingDotsEffect(
                dotHeight: 10,
                dotWidth: 10,
                dotColor: AppColors.grey78Color,
                activeDotColor: AppColors.primary,
                fixedCenter: true,
              ),
            ),
          ],
        );
      },
    );
  }
}
