import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:pharm_flow/core/app_extension/text_style_extension.dart';
import 'package:pharm_flow/core/config/app_assets.dart';
import 'package:pharm_flow/core/config/app_dimension.dart';
import 'package:pharm_flow/core/widget/app_asset_image.dart';
import 'package:pharm_flow/core/widget/circle_info_image.dart';

class AccountConfirmation extends StatelessWidget {
  const AccountConfirmation({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppAssetImage(imagePath: AppAssets.done),
        Gap(AppDimens.space10),
        Text('Yeay! Welcome Muzeeb',style: context.x16.weigh400.withBlack,),
        Gap(AppDimens.space10),
        Text('Account Created successfully',style: context.md14.weigh400.withGrey78,)
      ],
    );
  }
}
