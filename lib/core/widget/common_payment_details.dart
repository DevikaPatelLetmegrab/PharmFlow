import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:pharm_flow/core/app_extension/text_style_extension.dart';
import 'package:pharm_flow/core/config/app_colors.dart';
import 'package:pharm_flow/core/config/app_dimension.dart';
import 'package:pharm_flow/core/utils/squircle/squircle_container.dart';

class CommonPaymentDetails extends StatelessWidget {
  final Color borderColor;

  const CommonPaymentDetails(
      {super.key, this.borderColor = AppColors.greyD9Color});

  @override
  Widget build(BuildContext context) {
    return Squircle(
      borderColor: borderColor,
      child: Padding(
        padding: const EdgeInsets.all(AppDimens.space12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Payment Details',
              style: context.x18.weigh500,
            ),
            const Gap(AppDimens.space10),
            const SinglePaymentItem(
              title: 'MRP Total',
              content: '₹ 599.00',
            ),
            const SinglePaymentItem(
              title: 'Additional Discount',
              content: '-₹ 99.00',
            ),
            const SinglePaymentItem(
              title: 'Total Amount',
              content: '₹ 500.00',
            ),
            const SinglePaymentItem(
              title: 'Delivery Charges',
              content: '₹ 500.00',
            ),
            ListTile(
              contentPadding: EdgeInsets.zero,
              visualDensity: const VisualDensity(vertical: -4),
              titleTextStyle: context.x16.withPrimary.weigh500,
              leadingAndTrailingTextStyle: context.x16.withPrimary.weigh500,
              title: const Text('Total Payable'),
              trailing: const Text('₹ 500.00'),
            ),
          ],
        ),
      ),
    );
  }
}

class SinglePaymentItem extends StatelessWidget {
  final String title;
  final String content;

  const SinglePaymentItem(
      {super.key, required this.title, required this.content});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      visualDensity: const VisualDensity(vertical: -3),
      titleTextStyle: context.x16.weigh300,
      leadingAndTrailingTextStyle: context.x16.weigh300,
      title: Text(title),
      trailing: Text(content),
    );
  }
}
