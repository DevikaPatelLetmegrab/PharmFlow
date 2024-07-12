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
          ListTile(
            visualDensity: VisualDensity(vertical: -3),
            titleTextStyle: context.x16.weigh300,
            leadingAndTrailingTextStyle: context.x16.weigh300,
            title: Text('MRP Total'),
            trailing: Text('₹ 599.00'),
          ),
          ListTile(
            visualDensity: VisualDensity(vertical: -4),
            titleTextStyle: context.x16.weigh300,
            leadingAndTrailingTextStyle: context.x16.weigh300,
            title: Text('Additional Discount'),
            trailing: Text('-₹ 99.00'),
          ),
          ListTile(
            visualDensity: VisualDensity(vertical: -4),
            titleTextStyle: context.x16.weigh300,
            leadingAndTrailingTextStyle: context.x16.weigh300,
            title: Text('Total Amount'),
            trailing: Text('₹ 500.00'),
          ),
          ListTile(
            visualDensity: VisualDensity(vertical: -4),
            titleTextStyle: context.x16.weigh300,
            leadingAndTrailingTextStyle: context.x16.weigh300,
            title: Text('Delivery Charges'),
            trailing: Text('₹ 500.00'),
          ),
          ListTile(
            visualDensity: VisualDensity(vertical: -4),
            titleTextStyle: context.x16.withPrimary.weigh500,
            leadingAndTrailingTextStyle: context.x16.withPrimary.weigh500,
            title: Text('Total Payable'),
            trailing: Text('₹ 500.00'),
          ),
        ],
      ),
    );
  }
}
