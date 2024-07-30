import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:pharm_flow/core/app_extension/text_style_extension.dart';
import 'package:pharm_flow/core/config/app_dimension.dart';
import 'package:pharm_flow/core/utils/app_constants.dart';
import 'package:pharm_flow/core/utils/app_size.dart';
import 'package:pharm_flow/core/widget/app_eleveted_button.dart';
import 'package:pharm_flow/features/RegistrationProfile/presentation/widgets/common_title_content.dart';
import 'package:pharm_flow/core/widget/input_chip_widget.dart';

class PrimaryGoalScreen extends StatefulWidget {
  final PageController controller;

  const PrimaryGoalScreen({super.key, required this.controller});

  @override
  State<PrimaryGoalScreen> createState() => _PrimaryGoalScreenState();
}

class _PrimaryGoalScreenState extends State<PrimaryGoalScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppDimens.space16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CommonTitleContent(
              title: 'What’s your primary goal for this app?',
              content:
                  'Select any of 4 in given list you would like to choose'),
          const Gap(AppDimens.space20),
          Expanded(
            child: Wrap(
              spacing: 15,
              runSpacing: 15,
              children: AppConstants.goalList
                  .map(
                    (e) => InputChipWidget(
                      title: e.title,
                      isSelected: e.isSelected,
                      shoeCheckMark: true,
                    ),
                  )
                  .toList(),
            ),
          ),
          AppButton(
            onTap: () {
              widget.controller.nextPage(
                  duration: AppConstants.animDuration300, curve: Curves.easeIn);
            },
            buttonType: ButtonType.elevated,
            width: context.getWidth,
            childWidget: Text(
              'Continue',
              style: context.md14.weigh400.withWhite,
            ),
          )
        ],
      ),
    );
  }
}
