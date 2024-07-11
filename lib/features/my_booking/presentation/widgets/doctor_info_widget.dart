import 'package:flutter/material.dart';
import 'package:pharm_flow/core/config/app_assets.dart';
import 'package:pharm_flow/core/widget/common_column_view.dart';

class DoctorInfoWidget extends StatelessWidget {
  const DoctorInfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CommonColumnView(
          imagePath: AppAssets.userIcon,
          title: '658+',
          content: 'Patients',
        ),
        CommonColumnView(
          imagePath: AppAssets.rankingIcon,
          title: '11+',
          content: 'Years \nexpert',
        ),
        CommonColumnView(
          imagePath: AppAssets.blueStarFill,
          title: '5.0',
          content: 'Rating',
        ),
        CommonColumnView(
          imagePath: AppAssets.messageIcon,
          title: '300+',
          content: 'Reviews',
        ),
      ],
    );
  }
}
