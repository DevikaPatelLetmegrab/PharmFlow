import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:pharm_flow/core/app_extension/text_style_extension.dart';
import 'package:pharm_flow/core/config/app_assets.dart';
import 'package:pharm_flow/core/config/app_colors.dart';
import 'package:pharm_flow/core/config/app_dimension.dart';
import 'package:pharm_flow/core/routes/app_routes.dart';
import 'package:pharm_flow/core/routes/navigation_services.dart';
import 'package:pharm_flow/core/utils/app_size.dart';
import 'package:pharm_flow/core/utils/squircle/squircle_container.dart';
import 'package:pharm_flow/core/widget/app_asset_image.dart';
import 'package:pharm_flow/core/widget/app_eleveted_button.dart';
import 'package:pharm_flow/core/widget/app_search_field.dart';
import 'package:pharm_flow/core/widget/asset_icon.dart';
import 'package:pharm_flow/core/widget/common_app_bar.dart';
import 'package:pharm_flow/core/widget/common_doctor_container.dart';

class NearByPage extends StatelessWidget {
  const NearByPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(title: 'Near by Store'),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppDimens.space15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
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
                  //NavigationServices().pushName(AppRoutes.searchPage);
                },
              ),
              Gap(AppDimens.space15),
              Squircle(
                borderColor: AppColors.transparent,
                child: AppAssetImage(
                  imagePath: AppAssets.map,
                  height: 320,
                  width: context.getWidth,
                  fit: BoxFit.cover,
                ),
              ),
              Gap(AppDimens.space15),
              Text(
                'Near by Medical Store',
                style: context.x16.weigh500,
              ),
              Gap(AppDimens.space15),
              ListView.separated(
                itemCount: 5,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                separatorBuilder: (context, index) {
                  return const Gap(AppDimens.space15);
                },
                itemBuilder: (context, index) {
                  return Squircle(
                    padding: EdgeInsets.all(AppDimens.space10),
                    child: Column(
                      children: [
                        CommonDoctorContainer(
                          name: 'Shamlaji Road - Modasa',
                          location:
                              'Ambika Niketan, Athwalines, Surat, Gujarat 395007, ',
                        ),
                        Gap(AppDimens.space12),
                        Divider(
                          height: 2,
                          color: AppColors.greyE8Color,
                        ),
                        Gap(AppDimens.space12),
                        AppButton(
                          buttonType: ButtonType.outLineWithIcon,
                          buttonName: "1.5 distance",
                          buttonColor: AppColors.transparent,
                          width: context.getWidth,
                          icon: AppAssetImage(
                            imagePath: AppAssets.directionIcon,
                            size: AppDimens.space20,
                          ),
                        )
                      ],
                    ),
                  );
                },
              ),
              Gap(AppDimens.space15),
            ],
          ),
        ),
      ),
    );
  }
}
