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

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Future.delayed(
      const Duration(seconds: 3),
      () => NavigationServices().pushRemoveUntil(AppRoutes.welcomePage),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Squircle(
            height: context.getHeight,
            width: context.getWidth,
            radius: 0,
            backgroundColor: AppColors.primary,
          ),
          Column(
            children: [
              const Spacer(),
              AppAssetImage(
                imagePath: AppAssets.logoLight,
                size: 100,
              ),
              const Spacer(),
              Text(
                'Streamlining your Pharmacy',
                style: context.x16.withWhite,
              ),
              const Gap(AppDimens.space20),
            ],
          ),
          AppAssetImage(imagePath: AppAssets.splashBg)
        ],
      ),
    );
  }
}
