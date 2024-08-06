import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:linear_progress_bar/linear_progress_bar.dart';
import 'package:pharm_flow/core/app_extension/text_style_extension.dart';
import 'package:pharm_flow/core/config/app_dimension.dart';
import 'package:pharm_flow/core/routes/app_routes.dart';
import 'package:pharm_flow/core/routes/navigation_services.dart';
import 'package:pharm_flow/core/utils/app_constants.dart';
import 'package:pharm_flow/core/utils/app_size.dart';

import 'package:pharm_flow/core/config/app_assets.dart';
import 'package:pharm_flow/core/config/app_colors.dart';
import 'package:pharm_flow/core/widget/square_icon.dart';
import 'package:pharm_flow/features/registrationProfile/presentation/bloc/linear_process_cubit.dart';
import 'package:pharm_flow/features/registrationProfile/presentation/bloc/linear_process_state.dart';

class CommonRow extends StatelessWidget {
  final PageController controller;

  const CommonRow({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LinearProcessCubit, LinearProcessState>(
        builder: (context, state) {
      return Padding(
        padding: const EdgeInsets.only(
            left: AppDimens.space16,
            right: AppDimens.space16,
            top: AppDimens.space16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {
                controller.previousPage(
                    duration: AppConstants.animDuration300,
                    curve: Curves.easeIn);
              },
              child: SquareIcon(
                iconPadding: EdgeInsets.zero,
                backgroundColor: AppColors.lightBlue,
                iconPath: AppAssets.backArrow,
              ),
            ),
            Gap(AppDimens.space20),
            Expanded(
              child: LinearProgressBar(
                minHeight: context.h(6),
                maxSteps: 6,
                progressType: LinearProgressBar.progressTypeLinear,
                currentStep: state.currentIndex,
                progressColor: AppColors.primary,
                backgroundColor: AppColors.lightBlue,
              ),
            ),
            Gap(AppDimens.space20),
            GestureDetector(
              onTap: () {
                NavigationServices().pushName(AppRoutes.bottomBar);
              },
              child: Text(
                'Skip',
                style: context.x16.withBlack.weigh400,
              ),
            )
          ],
        ),
      );
    });
  }
}
