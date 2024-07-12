import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:pharm_flow/core/app_extension/text_style_extension.dart';
import 'package:pharm_flow/core/config/app_colors.dart';
import 'package:pharm_flow/core/config/app_dimension.dart';
import 'package:pharm_flow/core/utils/app_size.dart';

class StepView extends StatefulWidget {
  const StepView({super.key});

  @override
  State<StepView> createState() => _StepViewState();
}

class _StepViewState extends State<StepView> {
  final List stepList = [
    'Ordered\nPlaced',
    'Order\nPickup',
    'Order\nShipped',
    'Order\nDelivered',
  ];

  int activeStep = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        const Padding(
          padding: EdgeInsets.only(bottom: AppDimens.space35),
          child: DottedLine(
            dashLength: 10,
            dashGapLength: 7,
            dashColor: AppColors.grey78Color,
          ),
        ),
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: stepList.indexed.map((e) {
                return DecoratedBox(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: (activeStep == e.$1)
                        ? AppColors.primary.withOpacity(0.1)
                        : AppColors.grey78Color.withOpacity(0.1),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(AppDimens.space8),
                    child: Container(
                      height: context.h(14),
                      width: context.w(14),
                      decoration: BoxDecoration(
                          color: (activeStep == e.$1)
                              ? AppColors.primary
                              : AppColors.grey78Color,
                          shape: BoxShape.circle),
                    ),
                  ),
                );
              }).toList(),
            ),
            const Gap(AppDimens.space5),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: stepList.asMap().entries.map((e) {
                  return Text(
                    e.value,
                    textAlign: TextAlign.center,
                    style: context.s12.copyWith(
                        color: e.key == activeStep
                            ? AppColors.primary
                            : AppColors.grey78Color),
                  );
                }).toList()),
          ],
        )
      ],
    );
  }
}
