import 'package:flutter/material.dart';
import 'package:pharm_flow/core/app_extension/text_style_extension.dart';
import 'package:pharm_flow/core/config/app_assets.dart';
import 'package:pharm_flow/core/config/app_colors.dart';
import 'package:pharm_flow/core/routes/app_routes.dart';
import 'package:pharm_flow/core/routes/navigation_services.dart';
import 'package:pharm_flow/core/utils/app_size.dart';
import 'package:pharm_flow/core/widget/app_asset_image.dart';
import 'package:pharm_flow/core/widget/app_eleveted_button.dart';

class UploadPrescription extends StatelessWidget {
  const UploadPrescription({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        AppAssetImage(
          imagePath: AppAssets.blueCard,
          width: context.getWidth,
        ),
        Positioned(
          right: 0,
          bottom: 0,
          child: AppAssetImage(
            imagePath: AppAssets.page,
            size: 130,
          ),
        ),
        Positioned(
          bottom: 15,
          left: 10,
          child: AppButton(
            buttonType: ButtonType.elevated,
            buttonName: 'Upload Prescription',
            buttonColor: AppColors.whiteColor,
            fontColor: AppColors.primary,
            borderColor: AppColors.whiteColor,
            height: 40,
            onTap: () {
              NavigationServices().pushName(AppRoutes.prescriptionPage);
            },
          ),
        ),
        Positioned(
          top: 10,
          left: 10,
          child: SizedBox(
            width: context.w(240),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Upload prescriptions',
                  style: context.x16.withWhite,
                ),
                Text(
                  'and let us arrange your medicines for you',
                  style: context.s12.withWhite,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
