import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:pharm_flow/core/app_extension/text_style_extension.dart';
import 'package:pharm_flow/core/config/app_colors.dart';
import 'package:pharm_flow/core/config/app_dimension.dart';
import 'package:pharm_flow/core/utils/app_size.dart';
import 'package:pharm_flow/core/utils/squircle/squircle_container.dart';

class DeliveryEstimate extends StatelessWidget {
  const DeliveryEstimate({super.key});

  @override
  Widget build(BuildContext context) {
    return Squircle(
      borderColor: AppColors.greyD9Color,
      child: Column(
        children: [
          Container(
            height: context.h(50),
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: AppColors.greyD9Color,
                ),
              ),
              color: AppColors.blueEFColor,
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(AppDimens.borderRadius10),
                  topLeft: Radius.circular(AppDimens.borderRadius10)),
            ),
            child: ListTile(
              dense: true,
              visualDensity: const VisualDensity(horizontal: 0, vertical: 0),
              leading: Text(
                'ID: 082526201',
                style: context.md14.withBlack,
              ),
              trailing: Chip(
                label: Text('In Processing'),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(AppDimens.borderRadius5),
                  side: BorderSide(style: BorderStyle.none),
                ),
                backgroundColor: AppColors.primary,
                labelStyle: context.md14.withWhite,
              ),
            ),
          ),
          ListTile(
            dense: true,
            visualDensity: const VisualDensity(vertical: -3),
            title: Text(
              'Delivery Estimate',
              style: context.md14.weigh500.withBlack,
            ),
            trailing: Text(
              '3 Dec 2024',
              style: context.md14.weigh300.withBlack,
            ),
          ),
          ListTile(
            titleTextStyle: context.md14.withBlack,
            subtitleTextStyle: context.md14.withGrey78.weigh300,
            title: const Text('Shipping Address'),
            subtitle: const Text(
                '32, Maher nagar soc, opp star bazar, adajan road, Surat, Gujarat 395009, India'),
          ),
          ListTile(
            titleTextStyle: context.md14.withBlack,
            subtitleTextStyle: context.md14.withGrey78.weigh300,
            title: const Text('Billing Address'),
            subtitle: const Text(
                'Annie Besant Rd, Near Gujarat Mitra Press, Sonifaliya, Chowk Bazar, Gopipura, Surat, Gujarat 395003, India'),
          ),
          ListTile(
            dense: true,
            visualDensity: const VisualDensity(vertical: -3),
            title: Text(
              'Payment method',
              style: context.md14.weigh500.withBlack,
            ),
            trailing: Text(
              'Credit card',
              style: context.md14.weigh300.withBlack,
            ),
          ),
        ],
      ),
    );
  }
}
