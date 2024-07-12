import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:pharm_flow/core/config/app_dimension.dart';
import 'package:pharm_flow/features/order/presentation/widgets/order_item.dart';

class AllOrderPage extends StatelessWidget {
  const AllOrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppDimens.space16),
      child: ListView.separated(
        itemCount: 10,
        itemBuilder: (context, index) {
          return const OrderItem();
        },
        separatorBuilder: (BuildContext context, int index) {
          return const Gap(AppDimens.space16);
        },
      ),
    );
  }
}
