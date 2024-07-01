import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:pharm_flow/core/app_extension/text_style_extension.dart';
import 'package:pharm_flow/core/config/app_dimension.dart';
import 'package:pharm_flow/core/utils/app_constants.dart';
import 'package:pharm_flow/core/utils/app_size.dart';

import '../../../../core/widget/app_eleveted_button.dart';
import '../widgets/common_row.dart';
import '../widgets/common_title_content.dart';
import '../widgets/custom_radio_screen.dart';

class GenderScreen extends StatefulWidget {
  final PageController controller;

  const GenderScreen({super.key, required this.controller});

  @override
  State<GenderScreen> createState() => _GenderScreenState();
}

class _GenderScreenState extends State<GenderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Gap(AppDimens.space20),
          CommonRow(),
          Gap(AppDimens.space20),
          CommonTitleContent(
              title: 'What’s your Gender?',
              content:
                  'Please select right gender so our system gives you better result & outcomes'),
          Gap(AppDimens.space40),
          SizedBox(
            width: context.getWidth,
            height: context.h(220),
            child: Align(
              alignment: Alignment.center,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: AppConstants.genderList.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        AppConstants.genderList
                            .forEach((gender) => gender.isSelected = false);
                        AppConstants.genderList[index].isSelected = true;
                      });
                    },
                    child: CustomRadio(AppConstants.genderList[index]),
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return Gap(AppDimens.space20);
                },
              ),
            ),
          ),
          Spacer(),
          AppElevatedButton(
            onTap: () {
              widget.controller.jumpToPage(2);
            },
            buttonType: ButtonType.outline,
            width: context.getWidth,
            childWidget: Text(
              'Prefer not to say,thanks',
              style: context.md14.weigh400.withPrimary,
            ),
          ),
          Gap(AppDimens.space20),
          AppElevatedButton(
            onTap: () {
              widget.controller.jumpToPage(2);
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