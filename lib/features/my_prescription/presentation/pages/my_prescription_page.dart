import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:pharm_flow/core/app_extension/text_style_extension.dart';
import 'package:pharm_flow/core/config/app_assets.dart';
import 'package:pharm_flow/core/config/app_dimension.dart';
import 'package:pharm_flow/core/utils/app_dialogs.dart';
import 'package:pharm_flow/core/utils/app_size.dart';
import 'package:pharm_flow/core/widget/app_asset_image.dart';
import 'package:pharm_flow/core/widget/app_icon_button.dart';
import 'package:pharm_flow/core/widget/common_app_bar.dart';
import 'package:pharm_flow/core/widget/squircle_image_view.dart';

class MyPrescriptionPage extends StatelessWidget {
  const MyPrescriptionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(
        title: 'My Prescription',
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: AppDimens.space16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Jan 2024',
              style: context.x16,
            ),
            Gap(AppDimens.space10),
            GridView.builder(
              physics: NeverScrollableScrollPhysics(),
              itemCount: 4,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Stack(
                  children: [
                    SquircleImageView(
                        fit: BoxFit.cover,
                        imageType: ImageType.asset,
                        imagePath: AppAssets.prescription),
                    Align(
                      alignment: Alignment.topRight,
                      child: AppIconButton(
                        onTap: () {
                          AppDialogs.confirmationDialog(
                              confirmationTitle: 'Do you want to Remove?');
                        },
                        imagePath: AppAssets.closeCircleIcon,
                        // size: AppDimens.imageSize25,
                      ),
                    )
                  ],
                );
              },
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 4 / 3,
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10),
            ),
            Gap(AppDimens.space10),
            Text(
              'Dec 2023',
              style: context.x16,
            ),
            Gap(AppDimens.space10),
            GridView.builder(
              physics: NeverScrollableScrollPhysics(),
              itemCount: 4,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Stack(
                  children: [
                    SquircleImageView(
                        fit: BoxFit.cover,
                        imageType: ImageType.asset,
                        imagePath: AppAssets.prescription),
                    Padding(
                      padding: const EdgeInsets.all(AppDimens.space8),
                      child: Align(
                        alignment: Alignment.topRight,
                        child: AppAssetImage(
                          imagePath: AppAssets.closeCircleIcon,
                          size: AppDimens.imageSize25,
                        ),
                      ),
                    )
                  ],
                );
              },
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 4 / 3,
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10),
            )
          ],
        ),
      ),
    );
  }
}
