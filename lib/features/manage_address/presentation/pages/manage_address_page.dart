import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:pharm_flow/core/config/app_dimension.dart';
import 'package:pharm_flow/core/routes/app_routes.dart';
import 'package:pharm_flow/core/routes/navigation_services.dart';
import 'package:pharm_flow/core/utils/squircle/squircle_container.dart';
import 'package:pharm_flow/core/widget/app_eleveted_button.dart';
import 'package:pharm_flow/core/widget/common_app_bar.dart';
import 'package:pharm_flow/features/manage_address/presentation/widgets/address_item.dart';

class ManageAddressPage extends StatelessWidget {
  const ManageAddressPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CommonAppBar(
        title: 'Manage Address',
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(AppDimens.space16),
        child: AppButton(
          onTap: () {
            NavigationServices().pushName(AppRoutes.addNewAddressPage);
          },
          buttonType: ButtonType.elevated,
          buttonName: 'Add New Address',
        ),
      ),
      body: ListView.separated(
          padding: const EdgeInsets.symmetric(horizontal: AppDimens.space16),
          itemBuilder: (context, index) {
            return AddressItem(
              isSelected: index == 0,
            );
          },
          separatorBuilder: (context, index) => const Gap(AppDimens.space10),
          itemCount: 5),
    );
  }
}
