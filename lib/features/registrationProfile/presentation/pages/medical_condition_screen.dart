import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:pharm_flow/core/app_extension/text_style_extension.dart';
import 'package:pharm_flow/core/config/app_assets.dart';
import 'package:pharm_flow/core/config/app_colors.dart';
import 'package:pharm_flow/core/utils/app_size.dart';
import 'package:pharm_flow/core/widget/app_asset_image.dart';

import '../../../../core/config/app_dimension.dart';
import '../../../../core/widget/app_eleveted_button.dart';
import '../widgets/common_row.dart';
import '../widgets/common_title_content.dart';

class MedicalConditionScreen extends StatefulWidget {
  final PageController controller;

  const MedicalConditionScreen({super.key, required this.controller});

  @override
  State<MedicalConditionScreen> createState() => _MedicalConditionScreenState();
}

class _MedicalConditionScreenState extends State<MedicalConditionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Gap(AppDimens.space20),
          CommonRow(),
          Gap(AppDimens.space20),
          CommonTitleContent(
              title: 'Do you have existing medical conditions?',
              content:
                  'Please select right option so our system gives you better result & outcomes'),
          Gap(AppDimens.space40),
          AppAssetImage(
            imagePath: AppAssets.medicalPerson,
            height: context.h(250),
            width: context.w(250),
          ),
          Spacer(),
          AppElevatedButton(
            onTap: () {
              widget.controller.jumpToPage(3);
            },
            buttonType: ButtonType.elevatedWithIcon,
            width: context.getWidth,
            iconAlignment: IconAlignment.end,
            icon: AppAssetImage(
              imagePath: AppAssets.doneEmpty,
              color: AppColors.whiteColor,
            ),
            childWidget: Text(
              'Continue',
              style: context.md14.weigh400.withWhite,
            ),
          ),
          Gap(AppDimens.space20),
          AppElevatedButton(
            onTap: () {
              widget.controller.jumpToPage(3);
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
              widget.controller.nextPage(
                  duration: Duration(milliseconds: 300), curve: Curves.linear);
            },
            buttonType: ButtonType.outline,
            width: context.getWidth,
            childWidget: Text(
              'I don’t know   ?',
              style: context.md14.weigh400.withPrimary,
            ),
          ),
        ],
      ),
    );
  }
}
