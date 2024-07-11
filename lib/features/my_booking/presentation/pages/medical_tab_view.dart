import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:pharm_flow/core/config/app_dimension.dart';
import 'package:pharm_flow/features/my_booking/presentation/widgets/single_medical_widget.dart';

class MedicalTabView extends StatelessWidget {
  const MedicalTabView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: 10,
      itemBuilder: (BuildContext context, int index) {
        return const SingleMedicalWidget();
      },
      separatorBuilder: (BuildContext context, int index) {
        return const Gap(AppDimens.space15);
      },
    );
  }
}
