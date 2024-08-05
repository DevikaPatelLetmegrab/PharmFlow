import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:pharm_flow/core/app_extension/text_style_extension.dart';
import 'package:pharm_flow/core/config/app_assets.dart';
import 'package:pharm_flow/core/config/app_colors.dart';
import 'package:pharm_flow/core/config/app_dimension.dart';
import 'package:pharm_flow/core/routes/app_routes.dart';
import 'package:pharm_flow/core/routes/navigation_services.dart';
import 'package:pharm_flow/core/utils/app_constants.dart';
import 'package:pharm_flow/core/utils/app_dialogs.dart';
import 'package:pharm_flow/core/utils/app_size.dart';
import 'package:pharm_flow/core/utils/squircle/squircle_container.dart';
import 'package:pharm_flow/core/widget/asset_icon.dart';
import 'package:pharm_flow/core/widget/common_app_bar.dart';
import 'package:pharm_flow/features/privacy_policy/data/models/privacy_list_model.dart';

class PolicyPage extends StatefulWidget {
  const PolicyPage({super.key});

  @override
  State<PolicyPage> createState() => _PolicyPageState();
}

class _PolicyPageState extends State<PolicyPage> {
  var list = <PrivacyListModel>[];

  @override
  void initState() {
    super.initState();
    list = AppConstants.privacyList;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const CommonAppBar(
          title: 'Policy',
        ),
        body: Padding(
          padding: const EdgeInsets.all(AppDimens.space16),
          child: Column(
            children: [
              ListView.separated(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                separatorBuilder: (context, index) =>
                    const Gap(AppDimens.space10),
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
        ));
  }
}
