import 'package:flutter/material.dart';
import 'package:pharm_flow/core/app_extension/text_style_extension.dart';
import 'package:pharm_flow/core/utils/squircle/squircle_container.dart';

class PaymentDetails extends StatelessWidget {
  const PaymentDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Squircle(
      child: Column(
        children: [
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
            visualDensity: const VisualDensity(vertical: -4),
            titleTextStyle: context.x16.withPrimary.weigh500,
            leadingAndTrailingTextStyle: context.x16.withPrimary.weigh500,
            title: const Text('Total Payable'),
            trailing: const Text('₹ 500.00'),
          ),
        ],
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
      visualDensity: const VisualDensity(vertical: -3),
      titleTextStyle: context.x16.weigh300,
      leadingAndTrailingTextStyle: context.x16.weigh300,
      title: Text(title),
      trailing: Text(content),
    );
  }
}
