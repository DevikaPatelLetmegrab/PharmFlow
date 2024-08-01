import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:pharm_flow/core/config/app_dimension.dart';
import 'package:pharm_flow/features/my_appointment/presentation/widgets/appointment_item.dart';

class UpcomingAppointmentPage extends StatelessWidget {
  const UpcomingAppointmentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: 10,
      padding: const EdgeInsets.symmetric(
          horizontal: AppDimens.space16, vertical: AppDimens.space16),
      itemBuilder: (context, index) {
        return AppointmentItem(
          index: 0,
        );
      },
      separatorBuilder: (BuildContext context, int index) =>
          Gap(AppDimens.space16),
    );
  }
}
