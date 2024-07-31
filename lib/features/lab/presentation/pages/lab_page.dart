import 'package:flutter/material.dart';
import 'package:pharm_flow/core/config/app_dimension.dart';
import 'package:pharm_flow/core/utils/app_constants.dart';
import 'package:pharm_flow/core/utils/app_size.dart';
import 'package:pharm_flow/core/widget/common_app_bar.dart';
import 'package:pharm_flow/features/home/presentation/widgets/lab_gridview_item.dart';

class LabPage extends StatelessWidget {
  const LabPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CommonAppBar(title: 'Book Lab Test'),
      body: Padding(
        padding: const EdgeInsets.only(
          left: AppDimens.space15,
          right: AppDimens.space15,
          bottom: AppDimens.space15,
        ),
        child: GridView.builder(
          itemCount: 10,
          shrinkWrap: true,
          physics: const ScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: context.w(77) / context.h(75),
            crossAxisCount: 2,
            mainAxisSpacing: 12,
            crossAxisSpacing: 12,
          ),
          itemBuilder: (context, index) {
            var color = (index % 4 == 0 || (index % 4 == 3))
                ? AppConstants.colorList.first
                : AppConstants.colorList.last;
            return LabGridviewItem(
              bgColor: color,
              isLab: true,
            );
          },
        ),
      ),
    );
  }
}
