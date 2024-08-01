import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:pharm_flow/core/config/app_colors.dart';
import 'package:pharm_flow/core/config/app_dimension.dart';
import 'package:pharm_flow/core/utils/app_size.dart';
import 'package:pharm_flow/core/widget/app_eleveted_button.dart';
import 'package:pharm_flow/core/widget/common_app_bar.dart';
import 'package:pharm_flow/core/widget/common_doctor_container.dart';
import 'package:pharm_flow/features/my_booking/presentation/widgets/working_hour_widget.dart';

class AppointmentDetailPage extends StatelessWidget {
  const AppointmentDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CommonAppBar(
        title: 'Appointment Details',
      ),
      body: Padding(
        padding: const EdgeInsets.all(AppDimens.space16),
        child: Column(
          children: [
            const CommonDoctorContainer(
              imageHeight: 100,
              imageWidth: 100,
              name: 'Dr. Lincoln Westervelt',
              title: 'Dentist',
              location: 'A-96, Part 2, Mayapuri Delhi, 110064',
            ),
            const Gap(AppDimens.space10),
            const Divider(
              color: AppColors.greyE8Color,
            ),
            const Gap(AppDimens.space10),
            CommonRowTime(
              title: 'Date & Hour',
              content: 'Jan 20, 2024 - 11:30 AM',
            ),
            const Gap(AppDimens.space5),
            CommonRowTime(title: 'Package', content: 'Messaging'),
            const Gap(AppDimens.space5),
            CommonRowTime(title: 'Duration', content: '20 minutes'),
            const Gap(AppDimens.space5),
            CommonRowTime(title: 'Booking for', content: 'Self'),
            const Gap(AppDimens.space10),
            const Divider(
              color: AppColors.greyE8Color,
            ),
            const Gap(AppDimens.space10),
            CommonRowTime(title: 'Amount', content: '₹20'),
            const Gap(AppDimens.space5),
            CommonRowTime(
                title: 'Duration (20 Minutes)',
                content: 'Duration (20 Minutes)'),
            const Gap(AppDimens.space5),
            CommonRowTime(title: 'Duration', content: '1 x 20'),
            const Gap(AppDimens.space5),
            CommonRowTime(
              title: 'Total',
              content: '20',
              titleColor: AppColors.primary,
              contentColor: AppColors.primary,
            ),
            const Gap(AppDimens.space10),
            const Spacer(),
            AppButton(
              width: context.getWidth,
              buttonType: ButtonType.elevated,
              buttonName: 'Cancel Appointment',
            )
          ],
        ),
      ),
    );
  }
}
