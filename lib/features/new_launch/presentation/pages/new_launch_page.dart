import 'package:flutter/material.dart';
import 'package:pharm_flow/core/config/app_dimension.dart';
import 'package:pharm_flow/core/widget/common_app_bar.dart';
import 'package:pharm_flow/features/new_launch/presentation/widgets/product_grid_item.dart';

class NewLaunchPage extends StatelessWidget {
  const NewLaunchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CommonAppBar(title: "New launched"),
      body: Padding(
        padding: const EdgeInsets.all(AppDimens.space15),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 4.8 / 7,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
          ),
          shrinkWrap: true,
          physics: const ClampingScrollPhysics(),
          itemCount: 6,
          padding: EdgeInsets.zero,
          itemBuilder: (context, index) {
            return const ProductGridItem();
          },
        ),
      ),
    );
  }
}
