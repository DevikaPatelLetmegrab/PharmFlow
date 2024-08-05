import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:pharm_flow/core/config/app_dimension.dart';
import 'package:pharm_flow/core/utils/app_bottomsheet_widget.dart';
import 'package:pharm_flow/core/widget/app_eleveted_button.dart';
import 'package:pharm_flow/core/widget/common_app_bar.dart';
import 'package:pharm_flow/features/manage_bank/presentation/widgets/add_bank_account_sheet.dart';
import 'package:pharm_flow/features/manage_bank/presentation/widgets/bank_item.dart';

class ManageBankPage extends StatelessWidget {
  const ManageBankPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(
        title: 'Manage Bank',
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(AppDimens.space16),
        child: AppButton(
          onTap: () {
            AppBottomSheet().show(child: const AddBankAccountSheet());
          },
          buttonType: ButtonType.elevated,
          buttonName: 'Add New Bank Account',
        ),
      ),
      body: ListView.separated(
          padding: const EdgeInsets.symmetric(horizontal: AppDimens.space16),
          itemBuilder: (context, index) {
            return BankItem(
              isSelected: index == 0,
            );
          },
          separatorBuilder: (context, index) => const Gap(AppDimens.space10),
          itemCount: 5),
    );
  }
}
