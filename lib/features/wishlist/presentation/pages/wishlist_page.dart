import 'package:flutter/material.dart';
import 'package:pharm_flow/core/config/app_assets.dart';
import 'package:pharm_flow/core/config/app_colors.dart';
import 'package:pharm_flow/core/config/app_dimension.dart';
import 'package:pharm_flow/core/routes/app_routes.dart';
import 'package:pharm_flow/core/routes/navigation_services.dart';
import 'package:pharm_flow/core/widget/app_icon_button.dart';
import 'package:pharm_flow/core/widget/common_app_bar.dart';
import 'package:pharm_flow/features/wishlist/presentation/widgets/wishlist_item_widget.dart';

class WishlistPage extends StatelessWidget {
  const WishlistPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(
        title: 'Wishlist',
        actions: [
          AppIconButton(
            onTap: (){
              NavigationServices().pushName(AppRoutes.cartPage);
            },
            imagePath: AppAssets.shoppingCartIcon,
            iconColor: AppColors.primary,
          )
        ],
      ),
      body: GridView.builder(
          itemCount: 10,
          padding: const EdgeInsets.symmetric(horizontal: AppDimens.space16),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: 3 / 4,
              crossAxisCount: 2,
              crossAxisSpacing: AppDimens.space12,
              mainAxisSpacing: AppDimens.space12),
          itemBuilder: (context, index) {
            return const WishlistItemWidget();
          }),
    );
  }
}
