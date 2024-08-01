import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:pharm_flow/core/config/app_dimension.dart';
import 'package:pharm_flow/core/utils/app_size.dart';
import 'package:pharm_flow/core/widget/common_app_bar.dart';
import 'package:pharm_flow/features/brand/presentation/widgets/brand_listview_item.dart';
import 'package:pharm_flow/features/my_appointment/presentation/widgets/appointment_item.dart';
import 'package:pharm_flow/features/my_booking/presentation/widgets/single_doctor_widget.dart';

class HomeBookAppointmentPage extends StatelessWidget {
  const HomeBookAppointmentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(title: 'Book Appointment'),
      body: Column(
        children: [
          SizedBox(
            height: context.h(102),
            child: ListView.separated(
              itemCount: 8,
              scrollDirection: Axis.horizontal,
              padding:
                  const EdgeInsets.symmetric(horizontal: AppDimens.space15),
              separatorBuilder: (context, index) {
                return const SizedBox(width: 10);
              },
              itemBuilder: (context, index) {
                return BrandListviewItem();
              },
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(AppDimens.space15),
              child: ListView.separated(
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) {
                  return const AppointmentItem();
                },
                separatorBuilder: (BuildContext context, int index) {
                  return const Gap(AppDimens.space15);
                },
              ),
              // GridView.builder(
              //   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              //     crossAxisCount: 2,
              //     childAspectRatio: 5.3 / 7,
              //     crossAxisSpacing: 10,
              //     mainAxisSpacing: 20,
              //   ),
              //   shrinkWrap: true,
              //   physics: const ScrollPhysics(),
              //   itemCount: 6,
              //   padding: EdgeInsets.zero,
              //   itemBuilder: (context, index) {
              //     return const ProductGridItem();
              //   },
              // ),
            ),
          ),
        ],
      ),
    );
  }
}
