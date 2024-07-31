import 'dart:io';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:pharm_flow/core/app_extension/text_style_extension.dart';
import 'package:pharm_flow/core/config/app_assets.dart';
import 'package:pharm_flow/core/config/app_dimension.dart';
import 'package:pharm_flow/core/routes/app_routes.dart';
import 'package:pharm_flow/core/routes/navigation_services.dart';
import 'package:pharm_flow/core/utils/app_bottomsheet_widget.dart';
import 'package:pharm_flow/core/utils/app_size.dart';
import 'package:pharm_flow/core/widget/app_asset_image.dart';
import 'package:pharm_flow/core/widget/app_eleveted_button.dart';
import 'package:pharm_flow/core/widget/common_app_bar.dart';
import 'package:pharm_flow/core/widget/confirmation_button.dart';
import 'package:pharm_flow/core/widget/squircle_image_view.dart';

class UploadPrescriptionPage extends StatefulWidget {
  const UploadPrescriptionPage({super.key});

  @override
  State<UploadPrescriptionPage> createState() => _UploadPrescriptionPageState();
}

class _UploadPrescriptionPageState extends State<UploadPrescriptionPage> {
  File? file;
  ValueNotifier<String> pickedImagePath = ValueNotifier('');

  @override
  void dispose() {
    pickedImagePath.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CommonAppBar(title: 'Upload prescription'),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(AppDimens.space15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Select one',
                style: context.md14,
              ),
              const Gap(AppDimens.space10),
              ConfirmationButton(
                positiveText: 'Saved Prescription',
                negativeText: 'Upload New',
                onPositiveClick: () {
                  NavigationServices().pushName(AppRoutes.myPrescriptionPage);
                },
                onNegativeClick: () async {
                  file = await AppBottomSheet().showImagePicker();
                  if (file != null) {
                    pickedImagePath.value = file!.path;
                  }
                },
              ),
              const Gap(AppDimens.space10),
              ValueListenableBuilder(
                valueListenable: pickedImagePath,
                builder: (context, counterValue, child) {
                  return pickedImagePath.value.isEmpty
                      ? const SizedBox()
                      : Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text('Attached Prescription'),
                            const Gap(AppDimens.space10),
                            SquircleImageView(
                              imageType: ImageType.file,
                              imagePath: pickedImagePath.value,
                              height: 192,
                              fit: BoxFit.cover,
                            ),
                          ],
                        );
                },
              ),
              const Gap(AppDimens.space10),
              const Text('Guide to upload Prescription'),
              const Gap(AppDimens.space10),
              AppAssetImage(
                imagePath: AppAssets.prescription,
                width: context.getWidth,
              ),
              const Gap(AppDimens.space20),
              AppButton(
                buttonType: ButtonType.elevated,
                buttonName: 'continue',
                width: context.getWidth,
              )
            ],
          ),
        ),
      ),
    );
  }
}
