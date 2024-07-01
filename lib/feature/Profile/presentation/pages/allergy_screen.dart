import 'package:advanced_chips_input/advanced_chips_input.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:pharm_flow/core/app_extension/text_style_extension.dart';
import 'package:pharm_flow/core/config/app_colors.dart';
import 'package:pharm_flow/core/utils/app_size.dart';

import '../../../../core/config/app_assets.dart';
import '../../../../core/config/app_dimension.dart';
import '../../../../core/widget/app_asset_image.dart';
import '../../../../core/widget/app_eleveted_button.dart';
import '../widgets/common_row.dart';
import '../widgets/common_title_content.dart';

class AllergyScreen extends StatefulWidget {
  final PageController controller;

  const AllergyScreen({super.key, required this.controller});

  @override
  State<AllergyScreen> createState() => _AllergyScreenState();
}

class _AllergyScreenState extends State<AllergyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Gap(AppDimens.space20),
            CommonRow(),
            Gap(AppDimens.space20),
            CommonTitleContent(
                title: 'Do you have any ongoing allergy ?',
                content:
                    'You can type any allergies from which you are suffering'),
            Gap(AppDimens.space40),
            Align(
              alignment: Alignment.center,
              child: AppAssetImage(
                imagePath: AppAssets.allergyImage,
                height: context.h(250),
                width: context.w(250),
              ),
            ),
            Gap(AppDimens.space40),
            AdvancedChipsInput(
              separatorCharacter: ' ',
              placeChipsSectionAbove: true,
              widgetContainerDecoration: BoxDecoration(
                borderRadius: BorderRadius.circular(AppDimens.borderRadius20),
                border: Border.all(color: AppColors.primary),
              ),
              chipContainerDecoration: BoxDecoration(
                color: AppColors.lightBlue,
                borderRadius: BorderRadius.circular(AppDimens.borderRadius10),
              ),
              chipTextStyle: context.md14.withBlack.weigh400,
              validateInput: true,
              validateInputMethod: (value) {
                if (value.length < 3) {
                  return 'Input should be at least 3 characters long';
                }
                return null;
              },
              onChipDeleted: (chipText, index) {
                print('Deleted chip: $chipText at index $index');
              },
            ),
            Gap(AppDimens.space80),
            AppElevatedButton(
              onTap: () {
                widget.controller.jumpToPage(5);
              },
              buttonType: ButtonType.outLineWithIcon,
              width: context.getWidth,
              iconAlignment: IconAlignment.end,
              icon: AppAssetImage(
                imagePath: AppAssets.cancelIcon,
                // color: AppColors.whiteColor,
              ),
              childWidget: Text(
                'No I don\'t',
                style: context.md14.weigh400.withPrimary,
              ),
            ),
            Gap(AppDimens.space20),
            AppElevatedButton(
              onTap: () {
                widget.controller.jumpToPage(5);
              },
              buttonType: ButtonType.elevated,
              width: context.getWidth,
              childWidget: Text(
                'Continue',
                style: context.md14.weigh400.withWhite,
              ),
            ),
          ],
        ),
      ),
    );
  }
}