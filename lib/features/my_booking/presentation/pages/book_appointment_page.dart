import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:pharm_flow/core/app_extension/text_style_extension.dart';
import 'package:pharm_flow/core/config/app_dimension.dart';
import 'package:pharm_flow/core/routes/app_routes.dart';
import 'package:pharm_flow/core/routes/navigation_services.dart';
import 'package:pharm_flow/core/utils/app_constants.dart';
import 'package:pharm_flow/core/widget/common_app_bar.dart';
import 'package:pharm_flow/core/widget/confirmation_button.dart';
import 'package:pharm_flow/features/my_booking/presentation/bloc/package_bloc.dart';
import 'package:pharm_flow/features/my_booking/presentation/widgets/select_date_widget.dart';
import 'package:pharm_flow/features/my_booking/presentation/widgets/select_package_widget.dart';

class BookAppointmentPage extends StatelessWidget {
  const BookAppointmentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PackageBloc(),
      child: Scaffold(
        appBar: const CommonAppBar(
          title: 'Book Appointment',
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(AppDimens.space16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Date',
                  style: context.md14.withBlack,
                ),
                const Gap(AppDimens.space15),
                SelectDateWidget(
                  list: AppConstants.dateList,
                ),
                const Gap(AppDimens.space15),
                Text(
                  'Time',
                  style: context.md14.withBlack,
                ),
                const Gap(AppDimens.space15),
                SelectDateWidget(
                  list: AppConstants.timeList,
                ),
                const Gap(AppDimens.space15),
                Text(
                  'Select Duration',
                  style: context.md14.withBlack,
                ),
                const Gap(AppDimens.space15),
                SelectDateWidget(
                  list: AppConstants.durationList,
                ),
                const Gap(AppDimens.space15),
                Text(
                  'Select Package',
                  style: context.x16.withBlack,
                ),
                const Gap(AppDimens.space15),
                const SelectPackageWidget(),
                const Gap(AppDimens.space30),
                ConfirmationButton(
                  positiveText: 'Next',
                  negativeText: 'Cancel',
                  onPositiveClick: () {
                    NavigationServices().pushName(AppRoutes.patientDetailsForm);
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
