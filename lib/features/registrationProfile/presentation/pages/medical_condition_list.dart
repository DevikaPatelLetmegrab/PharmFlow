import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:pharm_flow/core/app_extension/text_style_extension.dart';
import 'package:pharm_flow/core/config/app_colors.dart';
import 'package:pharm_flow/core/utils/app_size.dart';

import '../../../../core/config/app_dimension.dart';
import '../../../../core/utils/app_constants.dart';
import '../../../../core/widget/app_eleveted_button.dart';
import '../../../../core/widget/input_chip_widget.dart';
import '../widgets/common_row.dart';
import '../widgets/common_title_content.dart';

class MedicalConditionListScreen extends StatefulWidget {
  final PageController controller;

  const MedicalConditionListScreen({super.key, required this.controller});

  @override
  State<MedicalConditionListScreen> createState() =>
      _MedicalConditionListScreenState();
}

class _MedicalConditionListScreenState
    extends State<MedicalConditionListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Gap(AppDimens.space20),
          CommonRow(),
          Gap(AppDimens.space20),
          CommonTitleContent(
              title: 'Please specify your medical condition',
              content:
                  'Select any of 4 in given list you would like to choose'),
          Gap(AppDimens.space40),
          Expanded(
            child: Wrap(
              spacing: 10,
              runSpacing: 10,
              children: AppConstants.medialConditionList
                  .map(
                    (e) => InputChipWidget(
                      title: e.title,
                      isSelected: e.isSelected,
                      shoeCheckMark: false,
                      customBorderSide: BorderSide.none,
                      backgroundColor: AppColors.lightBlue,
                    ),
                  )
                  .toList(),
            ),
          ),
          AppElevatedButton(
            onTap: () {
              widget.controller.jumpToPage(4);
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
    );
  }
}
