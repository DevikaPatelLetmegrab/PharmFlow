import 'dart:io';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:pharm_flow/core/config/app_assets.dart';
import 'package:pharm_flow/core/config/app_colors.dart';
import 'package:pharm_flow/core/config/app_dimension.dart';
import 'package:pharm_flow/core/utils/app_bottomsheet_widget.dart';
import 'package:pharm_flow/core/utils/app_size.dart';
import 'package:pharm_flow/core/widget/app_dropdown.dart';
import 'package:pharm_flow/core/widget/app_eleveted_button.dart';
import 'package:pharm_flow/core/widget/app_textform_field.dart';
import 'package:pharm_flow/core/widget/asset_icon.dart';
import 'package:pharm_flow/core/widget/common_app_bar.dart';
import 'package:pharm_flow/core/widget/round_icon.dart';
import 'package:pharm_flow/core/widget/squircle_image_view.dart';

class MyProfilePage extends StatefulWidget {
  const MyProfilePage({super.key});

  @override
  State<MyProfilePage> createState() => _MyProfilePageState();
}

class _MyProfilePageState extends State<MyProfilePage> {
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
      appBar: const CommonAppBar(
        title: 'My Profile',
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: AppDimens.space16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Gap(AppDimens.space10),
            Stack(
              clipBehavior: Clip.none,
              children: [
                ValueListenableBuilder(
                  valueListenable: pickedImagePath,
                  builder: (context, counterValue, child) {
                    return pickedImagePath.value.isEmpty
                        ? SquircleImageView(
                            imageType: ImageType.asset,
                            imagePath: AppAssets.image,
                            height: context.h(80),
                            width: context.w(80),
                            fit: BoxFit.cover,
                            borderSide: BorderSide.none,
                          )
                        : SquircleImageView(
                            imageType: ImageType.file,
                            imagePath: pickedImagePath.value,
                            height: context.h(80),
                            width: context.w(80),
                            borderSide: BorderSide.none,
                            fit: BoxFit.cover,
                          );
                  },
                ),
                Positioned(
                  top: 60,
                  left: 60,
                  child: GestureDetector(
                    onTap: () async {
                      File? file = await AppBottomSheet().showImagePicker();
                      pickedImagePath.value = file!.path;
                    },
                    child: RoundIcon(
                      iconPath: AppAssets.editIcon,
                      backgroundColor: AppColors.greyF4Color,
                    ),
                  ),
                )
              ],
            ),
            const Gap(AppDimens.space20),
            AppTextFormField(
              label: 'Full Name',
              hint: 'Full Name',
            ),
            const Gap(AppDimens.space10),
            AppTextFormField(
              label: 'Mobile Number',
              hint: 'Mobile Number',
              suffixIcon: AssetIcon(
                assetName: AppAssets.verifyOutlineIcon,
                color: AppColors.green,
              ),
            ),
            const Gap(AppDimens.space10),
            AppTextFormField(
              label: 'Email Address',
              hint: 'Email Address',
              suffixIcon: AssetIcon(
                assetName: AppAssets.verifyOutlineIcon,
                color: AppColors.green,
              ),
            ),
            const Gap(AppDimens.space10),
            AppDropdown(
              items: [],
              label: 'Gender',
              hintText: 'Select Gender',
              onChanged: (value) {},
            ),
            const Gap(AppDimens.space10),
            AppTextFormField(
              label: 'Date of Birth',
              hint: 'Date of Birth',
              suffixIcon: AssetIcon(
                assetName: AppAssets.calendarIcon,
                color: AppColors.blackColor,
              ),
            ),
            const Gap(AppDimens.space10),
            const AppTextFormField(
              label: 'Age',
              hint: 'Age',
            ),
            const Gap(AppDimens.space30),
            AppButton(
                width: context.getWidth,
                buttonType: ButtonType.elevated,
                buttonName: 'Update Profile'),
            const Gap(AppDimens.space30),
          ],
        ),
      ),
    );
  }
}
