import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:pharm_flow/core/app_extension/text_style_extension.dart';
import 'package:pharm_flow/core/config/app_assets.dart';
import 'package:pharm_flow/core/config/app_colors.dart';
import 'package:pharm_flow/core/config/app_dimension.dart';
import 'package:pharm_flow/core/routes/app_routes.dart';
import 'package:pharm_flow/core/routes/navigation_services.dart';
import 'package:pharm_flow/core/utils/app_bottomsheet_widget.dart';
import 'package:pharm_flow/core/utils/app_size.dart';
import 'package:pharm_flow/core/utils/squircle/squircle_container.dart';
import 'package:pharm_flow/core/widget/app_asset_image.dart';
import 'package:pharm_flow/core/widget/app_eleveted_button.dart';
import 'package:pharm_flow/core/widget/app_icon_button.dart';
import 'package:pharm_flow/core/widget/common_doctor_container.dart';
import 'package:pharm_flow/features/my_favourite/presentation/widgets/remove_fav_sheet.dart';

class SingleDoctorWidget extends StatelessWidget {
  final bool isFav;

  const SingleDoctorWidget({super.key, this.isFav = false});

  @override
  Widget build(BuildContext context) {
    return Squircle(
      borderColor: AppColors.greyE8Color,
      customRadius: BorderRadius.circular(AppDimens.borderRadius30),
      child: Padding(
        padding: const EdgeInsets.all(AppDimens.space8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Squircle(
                  padding: EdgeInsets.symmetric(
                      horizontal: AppDimens.space10,
                      vertical: AppDimens.space3),
                  backgroundColor: AppColors.green.withOpacity(0.2),
                  radius: 45,
                  borderColor: AppColors.transparent,
                  child: Row(
                    children: [
                      Squircle(
                        height: 8,
                        width: 8,
                        backgroundColor: AppColors.green,
                        borderColor: AppColors.transparent,
                      ),
                      Gap(AppDimens.space5),
                      Text('Available')
                    ],
                  ),
                ),
                if (isFav)
                  GestureDetector(
                    onTap: () {
                      AppBottomSheet().show(child: const RemoveFavSheet());
                    },
                    child: AppAssetImage(
                      imagePath: AppAssets.starFill,
                      color: AppColors.primary,
                      size: AppDimens.imageSize20,
                      fit: BoxFit.cover,
                    ),
                  )
              ],
            ),
            // const Gap(AppDimens.space10),
            const Divider(
              color: AppColors.greyE8Color,
            ),
            const Gap(AppDimens.space10),
            const CommonDoctorContainer(
              label: 'Professional Doctor',
              name: 'Dr.Lincoln Westervelt',
            ),
            const Divider(
              color: AppColors.greyE8Color,
            ),
            const Gap(AppDimens.space10),
            AppButton(
              onTap: () {
                NavigationServices().pushName(AppRoutes.detailsPage);
              },
              width: context.getWidth,
              buttonType: ButtonType.outline,
              buttonName: "Make Appointment",
            )
          ],
        ),
      ),
    );
  }
}
