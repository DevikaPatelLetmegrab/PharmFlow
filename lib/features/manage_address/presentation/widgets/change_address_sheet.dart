import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:pharm_flow/core/app_extension/text_style_extension.dart';
import 'package:pharm_flow/core/config/app_assets.dart';
import 'package:pharm_flow/core/config/app_colors.dart';
import 'package:pharm_flow/core/config/app_dimension.dart';
import 'package:pharm_flow/core/routes/app_routes.dart';
import 'package:pharm_flow/core/routes/navigation_services.dart';
import 'package:pharm_flow/core/utils/app_size.dart';
import 'package:pharm_flow/core/widget/app_eleveted_button.dart';
import 'package:pharm_flow/core/widget/square_icon.dart';

class ChangeAddressSheet extends StatelessWidget {
  const ChangeAddressSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Change Delivery Address',
            style: context.x18.weigh500,
          ),
          const Gap(AppDimens.space20),
          SingleAddressItem(
              title: 'Home Address',
              content: 'Anand mahal road adajan surat (gujarat) 395009',
              icon: AppAssets.houseIcon),
          const Divider(
            color: AppColors.greyDAColor,
          ),
          SingleAddressItem(
              title: 'Office Address',
              content: 'Anand mahal road adajan surat (gujarat) 395009',
              icon: AppAssets.buildingIcon),
          const Gap(AppDimens.space20),
          AppButton(
            onTap: () {
              NavigationServices().pushName(AppRoutes.addNewAddressPage);
            },
            buttonType: ButtonType.elevatedWithIcon,
            icon: const Icon(Icons.add,color: AppColors.whiteColor,),
            iconAlignment: IconAlignment.start,
            width: context.getWidth,
            buttonName: 'Add New Address',
          )
        ],
      ),
    );
  }
}

class SingleAddressItem extends StatelessWidget {
  final String title;
  final String content;
  final String icon;

  const SingleAddressItem(
      {super.key,
      required this.title,
      required this.content,
      required this.icon});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      titleTextStyle: context.x16.weigh500,
      subtitleTextStyle: context.md14.withGrey78,
      leading: SquareIcon(
        height: context.h(50),
        width: context.w(50),
        iconPadding: const EdgeInsets.all(AppDimens.space10),
        iconPath: icon,
      ),
      title: Text(title),
      subtitle: Text(content),
      trailing: Radio(
        value: false,
        groupValue: 1,
        onChanged: (value) {},
      ),
    );
  }
}
