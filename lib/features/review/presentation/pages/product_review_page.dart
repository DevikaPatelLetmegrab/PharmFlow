import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:pharm_flow/core/config/app_dimension.dart';
import 'package:pharm_flow/features/review/presentation/widgets/review_item.dart';

class ProductReviewPage extends StatelessWidget {
  const ProductReviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: AppDimens.space16),
        itemBuilder: (context, index) {
          return const ReviewItem();
        },
        separatorBuilder: (context, index) => const Gap(AppDimens.space10),
        itemCount: 10);
  }
}
