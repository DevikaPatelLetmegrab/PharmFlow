import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:pharm_flow/core/app_extension.dart/text_style_extention.dart';
import 'package:pharm_flow/core/config/app_colors.dart';
import 'package:pharm_flow/core/config/app_dimension.dart';
import 'package:pharm_flow/core/widgets/app_assets_image.dart';
import 'package:pharm_flow/features/welcome/presentation/bloc/counter_cubit.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PageviewItem extends StatelessWidget {
  final String imgString;
  final String title;
  final String description;
  PageviewItem(
      {super.key, this.imgString = '', this.title = '', this.description = ''});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CounterCubit, CurrentPageState>(
      builder: (context, state) {
        return Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                AppAssetsImage(
                  imagePath: imgString,
                  size: 270,
                ),
                const Gap(AppDimens.space10),
                SmoothPageIndicator(
                  controller: context.read<CounterCubit>().pageController,
                  count: 5,
                  effect: const WormEffect(
                    dotHeight: 12,
                    dotWidth: 12,
                    type: WormType.thinUnderground,
                    dotColor: AppColors.primary,
                    activeDotColor: AppColors.primary,
                    paintStyle: PaintingStyle.stroke,
                  ),
                ),
                const Gap(AppDimens.space10),
                Text(
                  title,
                  style: context.xl22.height1_5,
                  textAlign: TextAlign.center,
                ),
                const Gap(AppDimens.space10),
                Text(
                  description,
                  style: context.m14.weight300,
                  textAlign: TextAlign.center,
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
