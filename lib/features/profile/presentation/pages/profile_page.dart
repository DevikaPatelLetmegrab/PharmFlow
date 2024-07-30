import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:pharm_flow/core/app_extension/text_style_extension.dart';
import 'package:pharm_flow/core/config/app_assets.dart';
import 'package:pharm_flow/core/config/app_colors.dart';
import 'package:pharm_flow/core/config/app_dimension.dart';
import 'package:pharm_flow/core/routes/app_routes.dart';
import 'package:pharm_flow/core/routes/navigation_services.dart';
import 'package:pharm_flow/core/utils/app_constants.dart';
import 'package:pharm_flow/core/widget/asset_icon.dart';
import 'package:pharm_flow/core/widget/common_app_bar.dart';
import 'package:pharm_flow/core/widget/common_imageview.dart';
import 'package:pharm_flow/features/profile/data/models/drawer_model.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  var list = <DrawerModel>[];

  @override
  void initState() {
    super.initState();
    AppConstants.drawerItems.forEach(
      (element) {
        element.expanded.value = false;
        list.add(element);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CommonAppBar(
        title: 'Profile',
        showLeading: false,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppDimens.space16),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(color: AppColors.greyD9Color))),
                child: ListTile(
                  leading: CommonImageview(
                    imagePath: AppAssets.image,
                    fit: BoxFit.cover,
                    width: 50,
                    imageType: ImageType.asset,
                  ),
                  title: Text(
                    'Kamyabali Momin',
                    style: context.x16.withBlack,
                  ),
                  subtitle: Text(
                    '+91 0175861265',
                    style: context.md14.withGrey78,
                  ),
                ),
              ),
              const Gap(AppDimens.space10),
              ListView.separated(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                separatorBuilder: (context, index) => const Divider(
                  color: AppColors.greyF4Color,
                ),
                itemCount: list.length,
                itemBuilder: (context, index) {
                  var item = list[index];
                  return Material(
                    child: ListTile(
                      onTap: () {
                        NavigationServices().pushName(item.route);
                      },
                      dense: true,
                      shape: ContinuousRectangleBorder(
                        borderRadius: BorderRadius.circular(
                          AppDimens.borderRadius30,
                        ),
                      ),
                      leading: AssetIcon(
                        assetName: item.assetImage,
                      ),
                      title: Text(item.title, style: context.md14.withBlack),
                      trailing: AssetIcon(
                        color: AppColors.primary,
                        assetName: AppAssets.arrowRightIcon,
                      ),
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
