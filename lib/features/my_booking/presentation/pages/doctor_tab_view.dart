import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:pharm_flow/core/config/app_dimension.dart';
import 'package:pharm_flow/core/routes/app_routes.dart';
import 'package:pharm_flow/core/routes/navigation_services.dart';
import 'package:pharm_flow/features/my_booking/presentation/widgets/single_doctor_widget.dart';

class DoctorTabView extends StatelessWidget {
  const DoctorTabView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: 10,
      itemBuilder: (BuildContext context, int index) {
        return const SingleDoctorWidget();
      },
      separatorBuilder: (BuildContext context, int index) {
        return const Gap(AppDimens.space15);
      },
    );
  }
}
