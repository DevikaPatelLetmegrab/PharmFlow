import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:pharm_flow/core/app_extension/text_style_extension.dart';
import 'package:pharm_flow/core/config/app_assets.dart';
import 'package:pharm_flow/core/config/app_colors.dart';
import 'package:pharm_flow/core/config/app_dimension.dart';
import 'package:pharm_flow/core/routes/navigation_services.dart';
import 'package:pharm_flow/core/utils/app_dialogs.dart';
import 'package:pharm_flow/core/widget/app_asset_image.dart';
import 'package:pharm_flow/core/widget/square_icon.dart';

class AvtarUploadScreen extends StatefulWidget {
  final PageController controller;

  const AvtarUploadScreen({super.key, required this.controller});

  @override
  State<AvtarUploadScreen> createState() => _AvtarUploadScreenState();
}

class _AvtarUploadScreenState extends State<AvtarUploadScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: AppDimens.space8, vertical: AppDimens.space30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      NavigationServices().pop();
                    },
                    child: SquareIcon(
                      backgroundColor: AppColors.lightBlue,
                      iconPath: AppAssets.backArrow,
                    ),
                  ),
                  Gap(AppDimens.space10),
                  Text(
                    'Profile Upload',
                    style: context.x18.withBlack,
                  )
                ],
              ),
              Gap(AppDimens.space80),
              CircularPercentIndicator(
                radius: 100,
                animation: true,
                animationDuration: 1200,
                lineWidth: 20.0,
                percent: 0.6,
                center: AppAssetImage(
                  imagePath: AppAssets.avtar1,
                ),
                circularStrokeCap: CircularStrokeCap.round,
                backgroundColor: AppColors.borderColorGrey,
                progressColor: AppColors.primary,
              ),
              Gap(AppDimens.space10),
              Text(
                'Profile uploading',
                style: context.x22.withBlack,
              ),
              Gap(AppDimens.space10),
              Text(
                'Picture.jpg - 60 %',
                style: context.x16.withGrey78,
              ),
              Spacer(),
              GestureDetector(
                onTap: () {
                  AppDialogs.showAlertDialogBox(
                      title: 'Profile Updated Successfully',
                      content: 'Your profile has been updated successfully ',
                      popup: true,
                      btnName: 'Go to Home');
                },
                child: SquareIcon(
                  iconPath: AppAssets.cancelIcon,
                  backgroundColor: AppColors.pinkColor,
                  iconColor: AppColors.whiteColor,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
