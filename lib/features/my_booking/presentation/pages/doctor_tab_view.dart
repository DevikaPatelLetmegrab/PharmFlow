import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:pharm_flow/core/config/app_colors.dart';
import 'package:pharm_flow/core/config/app_dimension.dart';
import 'package:pharm_flow/core/utils/squircle/squircle_container.dart';

class DoctorTabView extends StatelessWidget {
  const DoctorTabView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: 10,
      itemBuilder: (BuildContext context, int index) {
        return Squircle(
          borderColor: AppColors.greyE8Color,
          height: 250,
          customRadius: BorderRadius.circular(AppDimens.borderRadius30),
          child: const Padding(
            padding: EdgeInsets.all(AppDimens.space16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Jan 20, 2024 - 11:30 AM'),
                Gap(AppDimens.space10),
                Divider(color: AppColors.greyE8Color,)
              ],
            ),
          ),
        );
      },
      separatorBuilder: (BuildContext context, int index) {
        return Gap(AppDimens.space15);
      },
    );
  }
}
