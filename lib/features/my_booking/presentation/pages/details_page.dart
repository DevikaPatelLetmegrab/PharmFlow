import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:pharm_flow/core/app_extension/text_style_extension.dart';
import 'package:pharm_flow/core/config/app_assets.dart';
import 'package:pharm_flow/core/config/app_colors.dart';
import 'package:pharm_flow/core/config/app_dimension.dart';
import 'package:pharm_flow/core/routes/app_routes.dart';
import 'package:pharm_flow/core/routes/navigation_services.dart';
import 'package:pharm_flow/core/utils/app_size.dart';
import 'package:pharm_flow/core/widget/app_asset_image.dart';
import 'package:pharm_flow/core/widget/app_eleveted_button.dart';
import 'package:pharm_flow/core/widget/common_app_bar.dart';
import 'package:pharm_flow/core/widget/common_doctor_container.dart';
import 'package:pharm_flow/core/widget/common_imageview.dart';
import 'package:pharm_flow/features/my_booking/presentation/widgets/doctor_info_widget.dart';
import 'package:pharm_flow/features/my_booking/presentation/widgets/review_widget.dart';
import 'package:pharm_flow/features/my_booking/presentation/widgets/working_hour_widget.dart';
import 'package:readmore/readmore.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CommonAppBar(
        title: 'Doctor Detail',
      ),
      bottomNavigationBar:  Padding(
        padding: EdgeInsets.all(AppDimens.space16),
        child: AppElevatedButton(
          onTap: () {
            NavigationServices().pushName(AppRoutes.bookAppointmentPage);
          },
          buttonType: ButtonType.elevated,
          buttonName: 'Book Appointment',
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(AppDimens.space16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CommonDoctorContainer(
                name: 'Dr.Lincoln Westervelt',
                title: 'Dentist',
                location: 'A-96, Part 2, Mayapuri Delhi, 110064',
                imageHeight: 100,
                imageWidth: 100,
              ),
              const Gap(AppDimens.space10),
              // const ExpansionTile(title: Text('sZCvsfedrg'),children: [Text('skldnlskdnme')],),
              const Gap(AppDimens.space10),
              const DoctorInfoWidget(),
              const Gap(AppDimens.space20),
              Text(
                'About Me',
                style: context.x16.withBlack,
              ),
              const Gap(AppDimens.space10),
              ReadMoreText(
                'dr. Lincoln Westervelt  is the top most immunologists specialist in Crist Hospital in London, UK. She achived several awards for her wonderful contribution',
                style: TextStyle(
                    color: AppColors.grey78Color, fontWeight: FontWeight.w300),
                trimMode: TrimMode.Line,
                trimLines: 3,
                colorClickableText: AppColors.primary,
                trimCollapsedText: 'Read More',
                trimExpandedText: 'Read Less',
                moreStyle: context.s12.withPrimary,
              ),
              const Gap(AppDimens.space20),
              Text(
                'Working Hours',
                style: context.x16.withBlack,
              ),
              const Gap(AppDimens.space10),
              const Divider(
                color: AppColors.greyE8Color,
              ),
              const Gap(AppDimens.space10),
              const WorkingHourWidget(),
              const Gap(AppDimens.space20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Address',
                    style: context.x16.withBlack,
                  ),
                  Text(
                    'View on Map',
                    style: context.md14.withPrimary,
                  )
                ],
              ),
              const Gap(AppDimens.space10),
              const Divider(
                color: AppColors.greyE8Color,
              ),
              const Gap(AppDimens.space10),
              CommonImageview(
                height: context.h(200),
                imageType: ImageType.asset,
                imagePath: AppAssets.map,
                fit: BoxFit.cover,
              ),
              const Gap(AppDimens.space20),
              Text(
                'Reviews',
                style: context.x16.withBlack,
              ),
              const Gap(AppDimens.space10),
              const Divider(
                color: AppColors.greyE8Color,
              ),
              const Gap(AppDimens.space10),
              ReviewWidget()
            ],
          ),
        ),
      ),
    );
  }
}
