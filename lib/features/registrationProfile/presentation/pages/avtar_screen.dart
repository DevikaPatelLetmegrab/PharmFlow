import 'package:carousel_slider/carousel_slider.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:pharm_flow/core/app_extension/text_style_extension.dart';
import 'package:pharm_flow/core/config/app_assets.dart';
import 'package:pharm_flow/core/config/app_colors.dart';
import 'package:pharm_flow/core/routes/app_routes.dart';
import 'package:pharm_flow/core/routes/navigation_services.dart';
import 'package:pharm_flow/core/utils/app_constants.dart';
import 'package:pharm_flow/core/utils/app_dialogs.dart';
import 'package:pharm_flow/core/utils/app_size.dart';
import 'package:pharm_flow/core/utils/squircle/squircle_container.dart';
import 'package:pharm_flow/core/widget/app_asset_image.dart';
import 'package:pharm_flow/core/config/app_dimension.dart';
import 'package:pharm_flow/core/widget/app_eleveted_button.dart';
import 'package:pharm_flow/features/registrationProfile/presentation/bloc/carousel_slider_cubit.dart';
import 'package:pharm_flow/features/registrationProfile/presentation/bloc/carousel_slider_state.dart';
import 'package:pharm_flow/features/registrationProfile/presentation/widgets/common_title_content.dart';

class AvtarScreen extends StatefulWidget {
  final PageController controller;

  const AvtarScreen({super.key, required this.controller});

  @override
  State<AvtarScreen> createState() => _AvtarScreenState();
}

class _AvtarScreenState extends State<AvtarScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CarouselSlideCubit(),
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(AppDimens.space16),
          child: Column(children: [
            const CommonTitleContent(
                title: 'Upload your avatar',
                content:
                    'You can upload your image from gallery or we have some premade avatar for you '),
            const Gap(AppDimens.space40),
            BlocBuilder<CarouselSlideCubit, CarouselSlideState>(
                builder: (context, state) {
              return CarouselSlider.builder(
                itemCount: AppConstants.avtarList.length,
                itemBuilder: (BuildContext context, int index, int realIndex) {
                  return Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: AppColors.greyDEColor),
                        color: (index == state.currentIndex)
                            ? AppColors.primary.withOpacity(0.5)
                            : AppColors.greyECColor),
                    child: AppAssetImage(
                      imagePath: AppConstants.avtarList[index],
                    ),
                  );
                },
                options: CarouselOptions(
                    initialPage: state.currentIndex,
                    onPageChanged: (index, value) {
                      context
                          .read<CarouselSlideCubit>()
                          .changeCurrentIndex(index);
                    },
                    autoPlay: false,
                    aspectRatio: 2.0,
                    enlargeCenterPage: true,
                    enlargeFactor: 0.4,
                    enableInfiniteScroll: false,
                    viewportFraction: 0.3),
              );
            }),
            const Gap(AppDimens.space20),
            DottedBorder(
                radius: const Radius.circular(AppDimens.borderRadius20),
                borderType: BorderType.RRect,
                dashPattern: [6],
                color: AppColors.grey96Color,
                child: Squircle(
                    height: context.h(80),
                    width: context.getWidth,
                    borderColor: AppColors.whiteColor,
                    child: Center(
                      child: AppButton(
                        icon: AppAssetImage(
                          imagePath: AppAssets.downloadIcon,
                        ),
                        buttonColor: AppColors.whiteColor,
                        borderColor: AppColors.whiteColor,
                        buttonType: ButtonType.outLineWithIcon,
                        childWidget: Text(
                          'upload from gallery',
                          style: context.x16.withBlack.weigh400,
                        ),
                      ),
                    ))),
            const Spacer(),
            AppButton(
              onTap: () {
                AppDialogs.showAlertDialogBox(
                    onTap: () {
                      NavigationServices().pushName(AppRoutes.bottomBar);
                    },
                    popup: false,
                    title: 'Profile Updated Successfully',
                    content: 'Your Profile has been updated successfully',
                    btnName: 'Go to Home');
              },
              buttonType: ButtonType.elevated,
              width: context.getWidth,
              childWidget: Text(
                'Continue',
                style: context.md14.weigh400.withWhite,
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
