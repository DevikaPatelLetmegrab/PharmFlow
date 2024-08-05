import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:pharm_flow/core/app_extension/text_style_extension.dart';
import 'package:pharm_flow/core/config/app_assets.dart';
import 'package:pharm_flow/core/config/app_dimension.dart';
import 'package:pharm_flow/core/routes/app_routes.dart';
import 'package:pharm_flow/core/routes/navigation_services.dart';
import 'package:pharm_flow/core/utils/app_bottomsheet_widget.dart';
import 'package:pharm_flow/core/utils/app_dialogs.dart';
import 'package:pharm_flow/core/utils/app_size.dart';
import 'package:pharm_flow/core/widget/app_eleveted_button.dart';
import 'package:pharm_flow/core/widget/common_app_bar.dart';
import 'package:pharm_flow/core/widget/common_doctor_container.dart';
import 'package:pharm_flow/core/config/app_colors.dart';
import 'package:pharm_flow/features/my_appointment/presentation/widgets/reschedule_appointment_sheet.dart';
import 'package:pharm_flow/features/my_appointment/presentation/widgets/review_appointment_sheet.dart';
import 'package:pharm_flow/features/my_booking/presentation/widgets/working_hour_widget.dart';

class AppointmentDetailsPage extends StatelessWidget {
  final int index;

  const AppointmentDetailsPage({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CommonAppBar(
        title: 'Appointment Details',
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: AppDimens.space16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CommonDoctorContainer(
              onTap: () {
                NavigationServices().pushName(AppRoutes.detailsPage);
              },
              trailingIcon: AppAssets.arrowRightIcon,
              isRate: false,
              imageHeight: context.h(100),
              imageWidth: context.w(100),
              title: 'Dentist',
              name: 'Dr. Lincoln Westervelt',
              location: 'A-96, Part 2, Mayapuri\n Delhi, 110064',
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
            const Gap(AppDimens.space20),
            Text(
              'Problem',
              style: context.x16,
            ),
            const Gap(AppDimens.space10),
            Text(
              'Figma ipsum component variant main layer. Plugin pencil duplicate ellipse connection create prototype. Flows pen library selection pixel opacity strikethrough. Share figma text hand figma component arrange figma. Distribute arrange polygon blur boolean style. Figma ipsum component variant main layer. Plugin pencil duplicate ellipse connection create prototype. Flows pen library selection pixel opacity strikethrough. Share figma text hand figma component arrange figma. Distribute arrange polygon blur boolean style.',
              style: context.md14.withGrey78.weigh300,
            ),
            const Gap(AppDimens.space20),
            if (index == 0) ...[
              AppButton(
                width: context.getWidth,
                buttonType: ButtonType.outline,
                buttonName: 'Cancel',
                onTap: () {
                  AppDialogs.confirmationDialog(
                      confirmationTitle:
                          'Do you want to cancel this appointment?');
                },
              ),
              const Gap(AppDimens.space10),
              AppButton(
                width: context.getWidth,
                buttonType: ButtonType.elevated,
                buttonName: 'Reschedule',
                onTap: () {
                  AppBottomSheet()
                      .show(child: const RescheduleAppointmentSheet());
                },
              ),
            ],
            if (index == 1) ...[
              AppButton(
                width: context.getWidth,
                buttonType: ButtonType.outline,
                buttonName: 'Re-Book',
                onTap: () {
                  NavigationServices().pushName(AppRoutes.bookAppointmentPage);
                },
              ),
              const Gap(AppDimens.space10),
              AppButton(
                width: context.getWidth,
                buttonType: ButtonType.elevated,
                buttonName: 'Review',
                onTap: () {
                  AppBottomSheet()
                      .show(child: const ReviewAppointmentSheet());
                },
              ),
            ],
            if (index == 2) ...[
              AppButton(
                width: context.getWidth,
                buttonType: ButtonType.outline,
                buttonName: 'Re-Book',
                onTap: () {
                  NavigationServices().pushName(AppRoutes.bookAppointmentPage);
                },
              ),
            ],
            const Gap(AppDimens.space20),
          ],
        ),
      ),
    );
  }
}
