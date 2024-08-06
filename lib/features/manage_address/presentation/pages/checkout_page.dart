import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:pharm_flow/core/app_extension/text_style_extension.dart';
import 'package:pharm_flow/core/config/app_colors.dart';
import 'package:pharm_flow/core/config/app_dimension.dart';
import 'package:pharm_flow/core/utils/app_bottomsheet_widget.dart';
import 'package:pharm_flow/core/widget/common_app_bar.dart';
import 'package:pharm_flow/features/manage_address/presentation/widgets/address_item.dart';
import 'package:pharm_flow/features/manage_address/presentation/widgets/change_address_sheet.dart';

class CheckoutPage extends StatelessWidget {
  const CheckoutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CommonAppBar(
        title: 'Checkout',
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: AppDimens.space16),
        child: Column(
          children: [
            ListTile(
              contentPadding: EdgeInsets.zero,
              title: Text(
                'Delivery Address',
                style: context.x16.weigh500,
              ),
              trailing: GestureDetector(
                onTap: () {
                  AppBottomSheet().show(child: const ChangeAddressSheet());
                },
                child: Chip(
                  shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(AppDimens.borderRadius10),
                      side: const BorderSide(color: AppColors.greyDAColor)),
                  label: Text(
                    'Change Address',
                    style: context.md14.withPrimary,
                  ),
                ),
              ),
            ),
            const Gap(AppDimens.space10),
            const AddressItem(isSelected: false,isTrailing: false,)
          ],
        ),
      ),
    );
  }
}
