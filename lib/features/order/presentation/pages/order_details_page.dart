import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:pharm_flow/core/app_extension/text_style_extension.dart';
import 'package:pharm_flow/core/config/app_dimension.dart';
import 'package:pharm_flow/core/utils/squircle/squircle_container.dart';
import 'package:pharm_flow/core/widget/app_bottosheet_widget.dart';
import 'package:pharm_flow/core/widget/common_app_bar.dart';
import 'package:pharm_flow/core/widget/confirmation_button.dart';
import 'package:pharm_flow/features/order/presentation/widgets/cancel_order_sheet.dart';
import 'package:pharm_flow/features/order/presentation/widgets/common_medicine_summary.dart';
import 'package:pharm_flow/features/order/presentation/widgets/delivery_estimate.dart';
import 'package:pharm_flow/core/widget/common_payment_details.dart';
import 'package:pharm_flow/features/order/presentation/widgets/step_view.dart';

class OrderDetailsPage extends StatelessWidget {
  const OrderDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CommonAppBar(
        title: 'Your Order',
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(
            vertical: AppDimens.space16, horizontal: AppDimens.space16),
        child: ConfirmationButton(
          positiveText: 'Cancel Order',
          negativeText: 'Contact Us',
          onPositiveClick: () {
            AppBottomSheet().show(child: const CancelOrderSheet());
          },
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: AppDimens.space16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const StepView(),
            const Gap(AppDimens.space12),
            const DeliveryEstimate(),
            const Gap(AppDimens.space16),
            Squircle(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Gap(AppDimens.space15),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: AppDimens.space18),
                    child: Text(
                      'Order Summary',
                      style: context.md14.weigh500,
                    ),
                  ),
                  const CommonMedicineSummary(),
                ],
              ),
            ),
            const Gap(AppDimens.space16),
            const CommonPaymentDetails()
          ],
        ),
      ),
    );
  }
}
