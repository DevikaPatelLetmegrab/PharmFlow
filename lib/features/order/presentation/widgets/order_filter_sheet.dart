import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:pharm_flow/core/app_extension/text_style_extension.dart';
import 'package:pharm_flow/core/config/app_dimension.dart';
import 'package:pharm_flow/core/routes/navigation_services.dart';
import 'package:pharm_flow/core/utils/app_constants.dart';
import 'package:pharm_flow/core/widget/confirmation_button.dart';
import 'package:pharm_flow/core/widget/input_chip_widget.dart';

class OrderFilterSheet extends StatelessWidget {
  const OrderFilterSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Date Wise',
            style: context.md14,
          ),
          Gap(AppDimens.space10),
          Wrap(
            spacing: 15,
            runSpacing: 15,
            children: AppConstants.dateWiseFilter
                .map(
                  (e) => InputChipWidget(
                    title: e.title,
                    isSelected: e.isSelected,
                  ),
                )
                .toList(),
          ),
          Gap(AppDimens.space10),
          Text('Order Wise'),
          Gap(AppDimens.space10),
          Wrap(
            spacing: 15,
            runSpacing: 15,
            children: AppConstants.orderWiseFilter
                .map(
                  (e) => InputChipWidget(
                    title: e.title,
                    isSelected: e.isSelected,
                  ),
                )
                .toList(),
          ),
          Gap(AppDimens.space20),
          ConfirmationButton(
            positiveText: 'Apply',
            negativeText: 'Clear All',
            onPositiveClick: () {
              NavigationServices().pop();
            },
            onNegativeClick: () {
              NavigationServices().pop();
            },
          )
        ],
      ),
    );
  }
}
