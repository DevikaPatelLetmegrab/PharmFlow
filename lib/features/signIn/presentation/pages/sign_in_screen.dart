import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:pharm_flow/core/app_extension/text_style_extension.dart';
import 'package:pharm_flow/core/config/app_assets.dart';
import 'package:pharm_flow/core/config/app_colors.dart';
import 'package:pharm_flow/core/config/app_dimension.dart';
import 'package:pharm_flow/core/routes/app_routes.dart';
import 'package:pharm_flow/core/routes/navigation_services.dart';
import 'package:pharm_flow/core/utils/app_size.dart';
import 'package:pharm_flow/core/utils/squircle/squircle_container.dart';
import 'package:pharm_flow/core/widget/app_asset_image.dart';
import 'package:pharm_flow/core/widget/app_eleveted_button.dart';
import 'package:pharm_flow/core/widget/app_textform_field.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(AppDimens.space16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Gap(AppDimens.space40),
            const Gap(AppDimens.space40),
            Squircle(
              height: AppDimens.space50,
              width: AppDimens.space50,
              borderColor: AppColors.whiteColor,
              gradient: const LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [AppColors.lightPrimary, AppColors.primary],
              ),
              child: AppAssetImage(
                imagePath: AppAssets.logo,
                height: 35,
              ),
            ),
            const Gap(AppDimens.space40),
            Text(
              'Welcome Back',
              style: context.x24.withBlack.weigh400,
            ),
            const Gap(AppDimens.space10),
            Text(
              'Welcome back! Log in to access your account and unlock a world of personalized healthcare services tailored just for you',
              style: context.md14.withGrey78.weigh400,
            ),
            const Gap(AppDimens.space30),
            const AppTextFormField(
              keyboardType: TextInputType.number,
              label: 'Phone Number',
            ),
            const Gap(AppDimens.space30),
            AppButton(
              onTap: () {
                NavigationServices()
                    .pushName(AppRoutes.verifyPage, extra: true);
              },
              buttonType: ButtonType.elevated,
              width: context.getWidth,
              borderRadius: BorderRadius.circular(AppDimens.borderRadius30),
              childWidget: Text(
                'Verify OTP',
                style: context.md14.withWhite.weigh400, 
              ),
            ),
            const Gap(AppDimens.space20),
            Align(
              alignment: Alignment.center,
              child: RichText(
                text: TextSpan(
                  style: context.md14.weigh400.withBlack,
                  text: 'Don\'t have account?',
                  children: [
                    TextSpan(
                      text: ' Sign Up',
                      style: context.md14.weigh400.withPrimary,
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
