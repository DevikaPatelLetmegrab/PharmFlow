import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:pharm_flow/core/app_extension/text_style_extension.dart';
import 'package:pharm_flow/core/config/app_colors.dart';
import 'package:pharm_flow/core/config/app_dimension.dart';
import 'package:pharm_flow/core/utils/squircle/squircle_container.dart';
import 'package:pharm_flow/core/widget/app_asset_image.dart';
import 'package:pharm_flow/features/categories/data/models/sub_categories_model.dart';

class SubCategoriesListviewItem extends StatelessWidget {
  final SubCategoriesModel? obj;

  const SubCategoriesListviewItem({
    super.key,
    this.obj,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Squircle(
          radius: 40,
          borderColor: AppColors.transparent,
          child: AppAssetImage(
            imagePath: obj!.img,
            height: 80,
            width: 100,
            fit: BoxFit.cover,
          ),
        ),
        Gap(AppDimens.space5),
        Text(
          obj!.title,
          style: context.s12,
          textAlign: TextAlign.center,
          maxLines: 2,
        ),
      ],
    );
  }
}
