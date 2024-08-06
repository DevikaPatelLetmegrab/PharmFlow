import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:pharm_flow/core/app_extension/text_style_extension.dart';
import 'package:pharm_flow/core/config/app_assets.dart';
import 'package:pharm_flow/core/config/app_colors.dart';
import 'package:pharm_flow/core/config/app_dimension.dart';
import 'package:pharm_flow/core/routes/app_routes.dart';
import 'package:pharm_flow/core/routes/navigation_services.dart';
import 'package:pharm_flow/core/utils/app_size.dart';
import 'package:pharm_flow/core/utils/squircle/squircle_container.dart';
import 'package:pharm_flow/core/widget/app_icon_button.dart';
import 'package:pharm_flow/core/widget/app_popup_menu.dart';
import 'package:pharm_flow/core/widget/asset_icon.dart';
import 'package:pharm_flow/core/widget/square_icon.dart';

class CartItem extends StatefulWidget {
  const CartItem({
    super.key,
  });

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  @override
  Widget build(BuildContext context) {
    return Squircle(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: AppDimens.space12),
        child: Column(
          children: [
            const Gap(AppDimens.space15),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SquareIcon(
                    height: context.h(62),
                    width: context.w(62),
                    borderColor: AppColors.transparent,
                    iconPadding: const EdgeInsets.all(AppDimens.space5),
                    iconPath: AppAssets.img,
                ),
                const Gap(AppDimens.space10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Dr. Reckeweg R42 Haemovenin Dropss ascfserhbtdjncgvnrt',
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                        style: context.md14.weigh300,
                      ),
                      Row(
                        children: [
                          Text(
                            '₹ 139',
                            style: context.x16.weigh600,
                          ),
                          const Gap(AppDimens.space10),
                          Text(
                            '₹ 200',
                            style: context.s12.withRed.redLineThrough,
                          ),
                          // const Gap(AppDimens.space10),
                        ],
                      ),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    AppPopupMenu(items: [
                      PopupMenuItem(
                        height: AppDimens.space30,
                        child: Row(
                          children: [
                            AssetIcon(
                              assetName: AppAssets.closeCircleIcon,
                              size: AppDimens.imageSize20,
                              color: AppColors.blackColor,
                            ),
                            const Gap(AppDimens.space5),
                            Text(
                              'Remove',
                              style: context.x16.weigh400,
                            ),
                          ],
                        ),
                      ),
                      PopupMenuItem(
                        onTap: () {
                          NavigationServices().pushName(AppRoutes.wishListPage);
                        },
                        height: AppDimens.space30,
                        child: Row(
                          children: [
                            AssetIcon(
                              assetName: AppAssets.heartIcon,
                              size: AppDimens.imageSize20,
                              color: AppColors.blackColor,
                            ),
                            const Gap(AppDimens.space5),
                            Text(
                              'Move to Wishlist',
                              style: context.x16.weigh400,
                            ),
                          ],
                        ),
                      )
                    ]),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        AppIconButton(
                          iconSize: AppDimens.imageSize18,
                          imagePath: AppAssets.removeOutlineIcon,
                        ),
                        Text(
                          '4',
                          style: context.x18.withPrimary.weigh500,
                        ),
                        AppIconButton(
                          iconSize: AppDimens.imageSize18,
                          imagePath: AppAssets.addIcon,
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
