import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:pharm_flow/core/app_extension/text_style_extension.dart';
import 'package:pharm_flow/core/config/app_assets.dart';
import 'package:pharm_flow/core/config/app_colors.dart';
import 'package:pharm_flow/core/config/app_dimension.dart';
import 'package:pharm_flow/core/utils/app_dialogs.dart';
import 'package:pharm_flow/core/utils/app_size.dart';
import 'package:pharm_flow/core/utils/squircle/squircle_container.dart';
import 'package:pharm_flow/core/widget/app_popup_menu.dart';
import 'package:pharm_flow/core/widget/asset_icon.dart';
import 'package:pharm_flow/core/widget/common_item.dart';
import 'package:pharm_flow/core/widget/square_icon.dart';

class BankItem extends StatelessWidget {
  final bool isSelected;

  const BankItem({super.key, required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Squircle(
          borderColor: isSelected ? AppColors.primary : AppColors.greyD9Color,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: AppDimens.space16),
            child: Column(
              children: [
                const Gap(AppDimens.space5),
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  leading: SquareIcon(
                    height: context.h(40),
                    width: context.w(40),
                    radius: AppDimens.borderRadius10,
                    iconPadding: const EdgeInsets.all(AppDimens.space8),
                    iconSize: AppDimens.imageSize20,
                    backgroundColor: AppColors.greyF4Color,
                    borderColor: AppColors.transparent,
                    iconPath: AppAssets.hdfcIcon,
                  ),
                  title: Text(
                    'HDFC Bank',
                    style: context.x16,
                  ),
                  trailing: AppPopupMenu(
                    constraints:
                        const BoxConstraints(maxHeight: AppDimens.space80),
                    items: [
                      PopupMenuItem(
                        height: AppDimens.space30,
                        child: Row(
                          children: [
                            AssetIcon(
                              assetName: AppAssets.editIcon,
                              size: AppDimens.imageSize20,
                              color: AppColors.blackColor,
                            ),
                            const Gap(AppDimens.space5),
                            Text(
                              'Edit Bank Account',
                              style: context.x16.weigh400,
                            ),
                          ],
                        ),
                      ),
                      PopupMenuItem(
                        onTap: () {
                          AppDialogs.confirmationDialog(
                              confirmationTitle:
                                  'Do You Want to Remove this Bank Account?');
                        },
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
                              'Delete Bank Account',
                              style: context.x16.weigh400,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                const CommonItem(
                  title: 'Name',
                  content: 'MuzzeebUrrehaman',
                ),
                const CommonItem(
                  title: 'Account no',
                  content: '************7542',
                ),
                const CommonItem(
                  title: 'Branch Address',
                  content: 'Anand mahal road adajan surat (gujarat) 395009',
                ),
                const Gap(AppDimens.space5),
              ],
            ),
          ),
        ),
        if (isSelected)
          Padding(
            padding: const EdgeInsets.only(top: AppDimens.space20),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Container(
                height: context.h(40),
                width: context.w(6),
                decoration: const BoxDecoration(
                    color: AppColors.primary,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(AppDimens.borderRadius10),
                      bottomRight: Radius.circular(AppDimens.borderRadius10),
                    )),
              ),
            ),
          )
      ],
    );
  }
}
