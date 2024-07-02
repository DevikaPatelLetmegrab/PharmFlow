import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:gap/gap.dart';
import 'package:pharm_flow/core/app_extension/text_style_extension.dart';
import 'package:pharm_flow/core/routes/app_routes.dart';
import 'package:pharm_flow/core/routes/navigation_services.dart';
import 'package:pharm_flow/core/utils/app_size.dart';

import 'package:pharm_flow/core/config/app_assets.dart';
import 'package:pharm_flow/core/config/app_colors.dart';
import 'package:pharm_flow/core/config/app_dimension.dart';
import 'package:pharm_flow/core/utils/squircle/squircle_container.dart';
import 'package:pharm_flow/core/widget/app_asset_image.dart';
import 'package:pharm_flow/core/widget/app_eleveted_button.dart';
import 'package:pharm_flow/core/widget/app_icon_button.dart';
import 'package:pharm_flow/core/widget/common_app_bar.dart';

class VerifyOtpScreen extends StatefulWidget {
  const VerifyOtpScreen({super.key});

  @override
  State<VerifyOtpScreen> createState() => _VerifyOtpScreenState();
}

class _VerifyOtpScreenState extends State<VerifyOtpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(
        title: '',
      ),
      body: Padding(
        padding: const EdgeInsets.all(AppDimens.space16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Gap(AppDimens.space40),
            Squircle(
              height: AppDimens.space50,
              width: AppDimens.space50,
              borderColor: AppColors.whiteColor,
              gradient: const LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    AppColors.lightPrimary,
                    AppColors.primary,
                  ]),
              child: AppAssetImage(
                imagePath: AppAssets.logo,
                height: 35,
              ),
            ),
            const Gap(AppDimens.space40),
            Text(
              'Verify OTP',
              style: context.x24.withBlack.weigh400,
            ),
            const Gap(AppDimens.space10),
            RichText(
                text: TextSpan(
                    style: context.md14.weigh400.withGrey78,
                    text:
                        'We have been send you a verification code to your mobile number',
                    children: [
                  TextSpan(
                      text: ' +91 7078787879',
                      style: context.x18.weigh400.withBlack)
                ])),
            const Gap(AppDimens.space30),
            OtpTextField(
              numberOfFields: 4,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              fieldWidth: context.getWidth * 0.15,
              borderRadius: BorderRadius.circular(AppDimens.borderRadius15),
              borderColor: AppColors.primary,
              showFieldAsBox: true,
              borderWidth: 1,
              cursorColor: AppColors.primary,
              onCodeChanged: (String code) {},
              onSubmit: (String verificationCode) {
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: const Text("Verification Code"),
                        content: Text('Code entered is $verificationCode'),
                      );
                    });
              }, // end onSubmit
            ),
            const Gap(AppDimens.space30),
            AppElevatedButton(
              buttonType: ButtonType.elevated,
              width: context.getWidth,
              borderRadius: BorderRadius.circular(AppDimens.borderRadius30),
              childWidget: Text(
                'Verify',
                style: context.md14.withWhite.weigh400,
              ),
              onTap: () {
                NavigationServices().pushName(AppRoutes.bottomBar);
              },
            ),
          ],
        ),
      ),
    );
  }
}
