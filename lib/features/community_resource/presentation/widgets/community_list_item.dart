import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:pharm_flow/core/app_extension/text_style_extension.dart';
import 'package:pharm_flow/core/config/app_assets.dart';
import 'package:pharm_flow/core/config/app_colors.dart';
import 'package:pharm_flow/core/config/app_dimension.dart';
import 'package:pharm_flow/core/utils/app_size.dart';
import 'package:pharm_flow/core/utils/squircle/squircle_container.dart';
import 'package:pharm_flow/core/widget/app_asset_image.dart';
import 'package:pharm_flow/core/widget/app_option_menu_button.dart';

class CommunityListItem extends StatelessWidget {
  const CommunityListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: AppColors.greyD9Color),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [
                      ListTile(
                        leading: SizedBox(
                          height: 50,
                          child: CircleAvatar(
                            backgroundImage: AssetImage(
                              AppAssets.map,
                            ),
                            radius: context.w(25),
                            backgroundColor: AppColors.primary,
                          ),
                        ),
                        title: Text(
                          'Dito Ramadhan',
                          style: context.md14.weigh500,
                        ),
                        subtitle: Text(
                          'Jakarta, Indonesia',
                          style: context.s12.weigh300.withGrey78,
                        ),
                        trailing: const AppOptionMenuButton(
                          items: [
                            PopupMenuItem(child: Text('data')),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: AppDimens.space15),
                        child: Column(
                          children: [
                            Text(
                              'Donec eleifend hendrerit purus et dignissim. Nunc lacinia lorem ut eros scelerisque, quis semper felis accumsan.',
                              style: context.s12.weigh300.withGrey33,
                            ),
                            const Gap(AppDimens.space10),
                            Text(
                              '#dummy #crypto #swiss #blockchain #schweiz #suisse ',
                              style: context.s12.weigh400.withPrimary,
                            ),
                            const Gap(AppDimens.space10),
                            Squircle(
                              borderColor: AppColors.transparent,
                              child: AppAssetImage(
                                imagePath: AppAssets.image1,
                                width: context.getWidth,
                                height: 150,
                                fit: BoxFit.cover,
                              ),
                            ),
                            const Gap(AppDimens.space10),
                            Row(
                              children: [
                                AppAssetImage(
                                  imagePath: AppAssets.eyeIcon,
                                  size: AppDimens.imageSize18,
                                ),
                                const Gap(AppDimens.space3),
                                Text(
                                  '13.868',
                                  style: context.s12.weigh300.withGrey78,
                                ),
                                const Gap(AppDimens.space12),
                                const Icon(
                                  CupertinoIcons.heart_fill,
                                  size: AppDimens.imageSize18,
                                  color: AppColors.red,
                                ),
                                const Gap(AppDimens.space3),
                                Text(
                                  '180',
                                  style: context.s12.weigh300.withGrey78,
                                ),
                                const Gap(AppDimens.space12),
                                AppAssetImage(
                                  imagePath: AppAssets.messageIcon,
                                  size: AppDimens.imageSize18,
                                ),
                                const Gap(AppDimens.space3),
                                Text(
                                  '102',
                                  style: context.s12.weigh300.withGrey78,
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      const Gap(AppDimens.space10),
                    ],
                  ),
                );
              
  }
}