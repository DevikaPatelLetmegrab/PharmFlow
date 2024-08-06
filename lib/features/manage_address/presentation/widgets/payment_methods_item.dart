import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:pharm_flow/core/app_extension/text_style_extension.dart';
import 'package:pharm_flow/core/config/app_assets.dart';
import 'package:pharm_flow/core/config/app_colors.dart';
import 'package:pharm_flow/core/config/app_dimension.dart';
import 'package:pharm_flow/core/utils/app_size.dart';
import 'package:pharm_flow/core/utils/squircle/squircle_container.dart';
import 'package:pharm_flow/core/widget/app_eleveted_button.dart';
import 'package:pharm_flow/core/widget/square_icon.dart';

class PaymentMethodsItem extends StatefulWidget {
  const PaymentMethodsItem({super.key});

  @override
  State<PaymentMethodsItem> createState() => _PaymentMethodsItemState();
}

class _PaymentMethodsItemState extends State<PaymentMethodsItem> {
  final ValueNotifier<String?> _isSelected = ValueNotifier<String?>(null);

  @override
  void dispose() {
    _isSelected.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Squircle(
              child: ListTile(
                  contentPadding: const EdgeInsets.only(
                    left: AppDimens.space10,
                  ),
                  leading: SquareIcon(
                    height: context.h(45),
                    width: context.w(45),
                    radius: AppDimens.borderRadius10,
                    iconSize: AppDimens.imageSize20,
                    borderColor: AppColors.transparent,
                    iconPath: AppAssets.walletIcon,
                  ),
                  title: Text(
                    'Wallets',
                    style: context.x16.weigh400,
                  ),
                  subtitle: Text(
                    'Paytm,phonepe,Amazon pay',
                    style: context.s12.weigh300.withGrey78,
                  ),
                  trailing: ValueListenableBuilder<String?>(
                      valueListenable: _isSelected,
                      builder: (context, value, child) {
                        return Radio(
                            value: 'Wallets',
                            groupValue: value,
                            onChanged: (newValue) {
                              _isSelected.value = newValue;
                            });
                      })),
            ),
            const Gap(AppDimens.space10),
            Squircle(
              child: ListTile(
                  contentPadding: const EdgeInsets.only(
                    left: AppDimens.space10,
                  ),
                  leading: SquareIcon(
                    height: context.h(45),
                    width: context.w(45),
                    radius: AppDimens.borderRadius10,
                    iconSize: AppDimens.imageSize20,
                    borderColor: AppColors.transparent,
                    iconPath: AppAssets.netBankingIcon,
                  ),
                  title: Text(
                    'Netbanking',
                    style: context.x16.weigh400,
                  ),
                  subtitle: Text(
                    'Select from list of bank',
                    style: context.s12.weigh300.withGrey78,
                  ),
                  trailing: ValueListenableBuilder<String?>(
                      valueListenable: _isSelected,
                      builder: (context, value, child) {
                        return Radio(
                            value: 'Netbanking',
                            groupValue: value,
                            onChanged: (newValue) {
                              _isSelected.value = newValue;
                            });
                      })),
            ),
            const Gap(AppDimens.space10),
            Squircle(
              child: ListTile(
                  contentPadding: const EdgeInsets.only(
                    left: AppDimens.space10,
                  ),
                  leading: SquareIcon(
                    height: context.h(45),
                    width: context.w(45),
                    radius: AppDimens.borderRadius10,
                    iconSize: AppDimens.imageSize20,
                    borderColor: AppColors.transparent,
                    iconPath: AppAssets.payOnDeliveryIcon,
                  ),
                  title: Text(
                    'Pay on delivery',
                    style: context.x16.weigh400,
                  ),
                  subtitle: Text(
                    'Pay in cash or pay online',
                    style: context.s12.weigh300.withGrey78,
                  ),
                  trailing: ValueListenableBuilder<String?>(
                      valueListenable: _isSelected,
                      builder: (context, value, child) {
                        return Radio(
                            value: 'payOnDelivery',
                            groupValue: value,
                            onChanged: (newValue) {
                              _isSelected.value = newValue;
                            });
                      })),
            ),
            const Gap(AppDimens.space10),
            Squircle(
              child: ListTile(
                  contentPadding: const EdgeInsets.only(
                    left: AppDimens.space10,
                  ),
                  leading: SquareIcon(
                    height: context.h(45),
                    width: context.w(45),
                    radius: AppDimens.borderRadius10,
                    iconSize: AppDimens.imageSize20,
                    borderColor: AppColors.transparent,
                    iconPath: AppAssets.creditDebitIcon,
                  ),
                  title: Text(
                    'Credit card/Debit card',
                    style: context.x16.weigh400,
                  ),
                  subtitle: Text(
                    'Pay in cash or pay online',
                    style: context.s12.weigh300.withGrey78,
                  ),
                  trailing: ValueListenableBuilder(
                      valueListenable: _isSelected,
                      builder: (context, value, child) {
                        return Radio(
                            value: 'creditDebit',
                            groupValue: value,
                            onChanged: (newValue) {
                              _isSelected.value = newValue;
                            });
                      })),
            ),
            const Gap(AppDimens.space20),
            AppButton(
              onTap: () {},
              buttonType: ButtonType.elevated,
              width: context.getWidth,
              buttonName: 'Pay ₹ 500.00 ',
            ),
            const Gap(AppDimens.space10),
          ],
        ),
      ),
    );
  }
}
