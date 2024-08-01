import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:pharm_flow/core/config/app_dimension.dart';
import 'package:pharm_flow/core/widget/common_app_bar.dart';
import 'package:pharm_flow/features/my_appointment/presentation/widgets/appointment_item.dart';
import 'package:pharm_flow/features/my_booking/presentation/widgets/single_doctor_widget.dart';

class MyAppointmentPage extends StatelessWidget {
  const MyAppointmentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CommonAppBar(
        title: 'My Appointment',
      ),
      body: ListView.separated(
        padding: const EdgeInsets.symmetric(
            vertical: AppDimens.space16, horizontal: AppDimens.space16),
        itemBuilder: (context, index) {
          return AppointmentItem();
        },
        separatorBuilder: (BuildContext context, int index) => Gap(AppDimens.space15),
        itemCount: 10,
      ),
    );
  }
}
