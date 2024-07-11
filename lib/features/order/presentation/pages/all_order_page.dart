import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:pharm_flow/core/app_extension/text_style_extension.dart';
import 'package:pharm_flow/core/config/app_colors.dart';
import 'package:pharm_flow/core/config/app_dimension.dart';
import 'package:pharm_flow/core/utils/app_size.dart';
import 'package:pharm_flow/core/utils/squircle/squircle_container.dart';

class AllOrderPage extends StatelessWidget {
  const AllOrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppDimens.space16),
      child: ListView.separated(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Squircle(
            height: context.h(200),
            borderColor: AppColors.greyD9Color,
            child: Column(
              children: [
                Squircle(
                  height: context.h(50),
                  borderColor: Colors.transparent,
                  customRadius: const BorderRadius.only(
                      topRight: Radius.circular(AppDimens.borderRadius15),
                      topLeft: Radius.circular(AppDimens.borderRadius15)),
                  backgroundColor: AppColors.blueEFColor,
                  child: Padding(
                    padding: const EdgeInsets.all(AppDimens.space8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'ID: 082526201',
                          style: context.md14.withBlack,
                        ),
                        Text(
                          '₹ 500.00',
                          style: context.md14.withBlack,
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(AppDimens.space16),
                  child: Column(
                    children: [],
                  ),
                )
              ],
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return Gap(AppDimens.space16);
        },
      ),
    );
  }
}
