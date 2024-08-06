import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:pharm_flow/core/app_extension/text_style_extension.dart';
import 'package:pharm_flow/core/config/app_assets.dart';
import 'package:pharm_flow/core/config/app_colors.dart';
import 'package:pharm_flow/core/config/app_dimension.dart';
import 'package:pharm_flow/core/routes/app_routes.dart';
import 'package:pharm_flow/core/routes/navigation_services.dart';
import 'package:pharm_flow/core/utils/app_size.dart';
import 'package:pharm_flow/core/widget/app_asset_image.dart';
import 'package:pharm_flow/core/widget/app_eleveted_button.dart';
import 'package:pharm_flow/core/widget/app_textform_field.dart';
import 'package:pharm_flow/core/widget/common_app_bar.dart';
import 'package:pharm_flow/core/widget/common_payment_details.dart';
import 'package:pharm_flow/features/cart/presentation/widgets/cart_item.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CommonAppBar(
        title: 'Cart',
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: AppDimens.space16),
        child: Column(
          children: [
            ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 4,
              itemBuilder: (context, index) {
                return const CartItem();
              },
              separatorBuilder: (BuildContext context, int index) =>
                  const Gap(AppDimens.space15),
            ),
            const Gap(AppDimens.space5),
            const ListTile(
              contentPadding: EdgeInsets.zero,
              title: AppTextFormField(
                hint: 'Promo Code',
              ),
              trailing: Padding(
                padding: EdgeInsets.only(top: AppDimens.space8),
                child: AppButton(
                  buttonType: ButtonType.elevated,
                  buttonName: 'Apply',
                ),
              ),
            ),
            const Gap(AppDimens.space15),
            AppButton(
              height: context.h(80),
              buttonType: ButtonType.gradient,
              width: context.getWidth,
              childWidget: ListTile(
                leading: AppAssetImage(
                  imagePath: AppAssets.deliveryBoy,
                ),
                contentPadding: const EdgeInsets.all(AppDimens.space5),
                title: Text(
                  '₹ 0 Free Delivery for this order',
                  style: context.s12.withWhite,
                ),
                subtitle: Text(
                  'Get Free Delivery for First order',
                  style: context.md14.withWhite,
                ),
              ),
            ),
            const Gap(AppDimens.space15),
            const CommonPaymentDetails(
              borderColor: AppColors.transparent,
            ),
            const Gap(AppDimens.space20),
            AppButton(
              onTap: (){
                NavigationServices().pushName(AppRoutes.checkoutPage);
              },
              buttonType: ButtonType.elevated,
              width: context.getWidth,
              buttonName: 'Proceed to Checkout',
            ),
            const Gap(AppDimens.space20),
          ],
        ),
      ),
    );
  }
}
