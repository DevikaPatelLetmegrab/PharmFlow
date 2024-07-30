import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:pharm_flow/core/app_extension/text_style_extension.dart';
import 'package:pharm_flow/core/config/app_assets.dart';
import 'package:pharm_flow/core/config/app_colors.dart';
import 'package:pharm_flow/core/config/app_dimension.dart';
import 'package:pharm_flow/core/routes/app_routes.dart';
import 'package:pharm_flow/core/routes/navigation_services.dart';
import 'package:pharm_flow/core/utils/app_size.dart';
import 'package:pharm_flow/core/utils/squircle/squircle_container.dart';
import 'package:pharm_flow/core/widget/asset_icon.dart';
import 'package:pharm_flow/core/widget/square_icon.dart';
import 'package:pharm_flow/features/order/presentation/widgets/common_medicine_summary.dart';

class OrderItem extends StatelessWidget {
  const OrderItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Squircle(
      // height: context.h(200),
      borderColor: AppColors.greyD9Color,
      child: Column(
        children: [
          Container(
            height: context.h(50),
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: AppColors.greyD9Color,
                ),
              ),
              color: AppColors.blueEFColor,
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(AppDimens.borderRadius10),
                  topLeft: Radius.circular(AppDimens.borderRadius10)),
            ),
            child: ListTile(
              dense: true,
              visualDensity: const VisualDensity(horizontal: 0, vertical: 0),
              leading: Text(
                'ID: 082526201',
                style: context.md14.withBlack,
              ),
              trailing: Text(
                '₹ 500.00',
                style: context.md14.withBlack,
              ),
            ),
          ),
          const Gap(AppDimens.space10),
          const CommonMedicineSummary(),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: DottedLine(
              dashLength: 10,
              dashColor: AppColors.greyDEColor,
            ),
          ),
          TextButton.icon(
            iconAlignment: IconAlignment.end,
            icon: AssetIcon(
              assetName: AppAssets.arrowRightIcon,
              color: AppColors.primary,
              size: AppDimens.imageSize18,
            ),
            style: TextButton.styleFrom(overlayColor: AppColors.transparent),
            label: Text(
              'View Details',
              style: context.md14.withPrimary,
            ),
            onPressed: () {
              NavigationServices().pushName(AppRoutes.orderDetailPage);
            },
          ),
        ],
      ),
    );
  }
}
