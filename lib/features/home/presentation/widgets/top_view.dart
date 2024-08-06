import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:pharm_flow/core/app_extension/text_style_extension.dart';
import 'package:pharm_flow/core/config/app_assets.dart';
import 'package:pharm_flow/core/config/app_colors.dart';
import 'package:pharm_flow/core/config/app_dimension.dart';
import 'package:pharm_flow/core/routes/app_routes.dart';
import 'package:pharm_flow/core/routes/navigation_services.dart';
import 'package:pharm_flow/core/widget/app_icon_button.dart';
import 'package:pharm_flow/core/widget/app_search_field.dart';
import 'package:pharm_flow/core/widget/asset_icon.dart';

class TopView extends StatelessWidget {
  const TopView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppDimens.space15),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Delivery Location',
                      style: context.s12.withGrey78,
                    ),
                    const Gap(AppDimens.space4),
                    Row(
                      children: [
                        AssetIcon(
                          assetName: AppAssets.locationIcon,
                          color: AppColors.lightPrimary,
                        ),
                        const Gap(AppDimens.space4),
                        Text(
                          'Surat 395003',
                          style: context.md14,
                        ),
                        const Gap(AppDimens.space4),
                        const Icon(Icons.keyboard_arrow_down)
                      ],
                    )
                  ],
                ),
              ),
              Row(
                children: [
                  AppIconButton(
                    imagePath: AppAssets.notificationIcon,
                    onTap: () {
                      NavigationServices().pushName(AppRoutes.notificationPage);
                    },
                  ),
                  AppIconButton(
                    imagePath: AppAssets.shoppingCartIcon,
                    iconColor: AppColors.blackColor,
                    onTap: () {
                      NavigationServices().pushName(AppRoutes.cartPage);
                    },
                  ),
                ],
              ),
            ],
          ),
          const Gap(AppDimens.space15),
          AppSearchField(
            hint: 'Search',
            readOnly: true,
            showSuffix: true,
            suffix: AssetIcon(
              assetName: AppAssets.filterIcon,
              size: AppDimens.imageSize20,
              color: AppColors.lightPrimary,
            ),
            onTap: () {
              NavigationServices().pushName(AppRoutes.searchPage);
            },
          ),
        ],
      ),
    );
  }
}
