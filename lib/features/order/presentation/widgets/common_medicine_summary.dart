import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:pharm_flow/core/app_extension/text_style_extension.dart';
import 'package:pharm_flow/core/config/app_assets.dart';
import 'package:pharm_flow/core/config/app_colors.dart';
import 'package:pharm_flow/core/config/app_dimension.dart';
import 'package:pharm_flow/core/widget/square_icon.dart';

class CommonMedicineSummary extends StatelessWidget {
  const CommonMedicineSummary({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      isThreeLine: true,
      leading: SquareIcon(
          borderColor: AppColors.transparent,
          iconPadding: const EdgeInsets.all(AppDimens.space5),
          iconPath: AppAssets.img,
          backgroundColor: AppColors.greyECColor),
      title: Text(
        'Dr. Reckeweg R42 Haemovenin Drops',
        style: context.md14,
      ),
      subtitle: IntrinsicHeight(
        child: Row(
          children: [
            Text(
              '₹ 139',
              style: context.x16.weigh600,
            ),
             Gap(AppDimens.space10),
            Text(
              '₹ 200',
              style: context.md14.weigh600.withRed.redLineThrough,
            ),
          ],
        ),
      ),
    );
  }
}
