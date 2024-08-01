import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:pharm_flow/core/config/app_dimension.dart';

import 'package:pharm_flow/features/my_booking/presentation/widgets/single_doctor_widget.dart';

class FavDoctorTab extends StatelessWidget {
  const FavDoctorTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: 10,
      itemBuilder: (BuildContext context, int index) {
        return const SingleDoctorWidget(isFav: true,);
      },
      separatorBuilder: (BuildContext context, int index) {
        return const Gap(AppDimens.space15);
      },
    );
  }
}
