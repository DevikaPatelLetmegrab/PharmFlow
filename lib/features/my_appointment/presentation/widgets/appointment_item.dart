import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:gap/gap.dart';
import 'package:pharm_flow/core/app_extension/text_style_extension.dart';
import 'package:pharm_flow/core/config/app_assets.dart';
import 'package:pharm_flow/core/config/app_colors.dart';
import 'package:pharm_flow/core/config/app_dimension.dart';
import 'package:pharm_flow/core/routes/app_routes.dart';
import 'package:pharm_flow/core/routes/navigation_services.dart';
import 'package:pharm_flow/core/utils/app_bottomsheet_widget.dart';
import 'package:pharm_flow/core/utils/app_size.dart';
import 'package:pharm_flow/core/utils/squircle/squircle_container.dart';
import 'package:pharm_flow/core/widget/app_asset_image.dart';
import 'package:pharm_flow/core/widget/app_eleveted_button.dart';
import 'package:pharm_flow/core/widget/common_imageview.dart';
import 'package:pharm_flow/core/widget/confirmation_button.dart';
import 'package:pharm_flow/features/my_appointment/presentation/manager/appointment_cubit.dart';
import 'package:pharm_flow/features/my_appointment/presentation/manager/appointment_state.dart';
import 'package:pharm_flow/features/my_appointment/presentation/widgets/reschedule_appointment_sheet.dart';
import 'package:pharm_flow/features/my_appointment/presentation/widgets/review_appointment_sheet.dart';

class AppointmentItem extends StatefulWidget {
  final int index;

  const AppointmentItem({super.key, required this.index});

  @override
  State<AppointmentItem> createState() => _AppointmentItemState();
}

class _AppointmentItemState extends State<AppointmentItem> {
  var cubit = AppointmentCubit();

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: cubit,
      child: Squircle(
        borderColor: AppColors.greyE8Color,
        customRadius: BorderRadius.circular(AppDimens.borderRadius30),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppDimens.space16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                // tileColor: Colors.red,
                titleTextStyle: context.md14,
                title: const Text(
                  'Jan 20, 2024 - 11:30 AM',
                ),
                visualDensity: const VisualDensity(vertical: -2),
                trailing: (widget.index == 0)
                    ? Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Remind Me',
                            style: context.s12,
                          ),
                          const Gap(AppDimens.space5),
                          BlocBuilder<AppointmentCubit, AppointmentState>(
                              builder: (context, state) {
                            return FlutterSwitch(
                              height: context.h(28),
                              width: context.w(52),
                              toggleSize: AppDimens.imageSize20,
                              activeColor: AppColors.primary,
                              value: state.isRemind,
                              onToggle: (bool value) {
                                cubit.changeRemindStatus(value);
                              },
                            );
                          }),
                        ],
                      )
                    : null,
              ),
              const Divider(
                color: AppColors.greyE8Color,
              ),
              const Gap(AppDimens.space10),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CommonImageview(
                    imageType: ImageType.asset,
                    imagePath: AppAssets.doctorImage,
                    height: context.h(80),
                    width: context.w(80),
                    fit: BoxFit.cover,
                  ),
                  Gap(AppDimens.space10),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Dr. Lincoln Westervelt',
                          style: context.md14,
                        ),
                        const Gap(AppDimens.space8),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            AppAssetImage(
                              imagePath: AppAssets.locationIcon,
                              size: AppDimens.imageSize18,
                            ),
                            const Gap(AppDimens.space5),
                            Expanded(
                              child: Text(
                                'A-9625, Part 2, Mayapuri Delhi, 110064',
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: context.md14.withGrey33.weigh300,
                              ),
                            ),
                          ],
                        ),
                        const Gap(AppDimens.space10),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            AppAssetImage(
                              imagePath: AppAssets.noteTextIcon,
                              size: AppDimens.imageSize18,
                            ),
                            const Gap(AppDimens.space5),
                            Expanded(
                                child: RichText(
                              text: TextSpan(
                                  text: 'Booking ID: ',
                                  style: context.md14.weigh300.withGrey33,
                                  children: [
                                    TextSpan(
                                        text: '#Ph0245080',
                                        style: context.md14.withPrimary)
                                  ]),
                            )),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
              const Gap(AppDimens.space10),
              const Divider(
                color: AppColors.greyE8Color,
              ),
              const Gap(AppDimens.space8),
              widget.index == 0
                  ? ConfirmationButton(
                      onPositiveClick: () {
                        AppBottomSheet()
                            .show(child: const RescheduleAppointmentSheet());
                      },
                      positiveText: 'Reschedule',
                      negativeText: 'Cancel')
                  : widget.index == 1
                      ? ConfirmationButton(
                          positiveText: 'Review',
                          negativeText: 'Re-Book',
                          onPositiveClick: () {
                            AppBottomSheet()
                                .show(child: const ReviewAppointmentSheet());
                          },
                          onNegativeClick: () {
                            NavigationServices()
                                .pushName(AppRoutes.bookAppointmentPage);
                          },
                        )
                      : AppButton(
                          width: context.getWidth,
                          buttonType: ButtonType.outline,
                          buttonName: 'Re-Book',
                        ),
              const Gap(AppDimens.space12),
            ],
          ),
        ),
      ),
    );
  }
}
