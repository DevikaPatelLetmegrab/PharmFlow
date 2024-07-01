import 'package:flutter/material.dart';
import 'package:pharm_flow/core/app_extension/text_style_extension.dart';
import 'package:pharm_flow/core/config/app_assets.dart';
import 'package:pharm_flow/core/config/app_colors.dart';
import 'package:pharm_flow/core/config/app_dimension.dart';
import 'package:pharm_flow/core/model/gender_model.dart';
import 'package:pharm_flow/core/utils/app_size.dart';
import 'package:pharm_flow/core/widget/app_asset_image.dart';

class CustomRadio extends StatelessWidget {
  GenderModel _gender;

  CustomRadio(this._gender);

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 0,
        color: _gender.isSelected ? AppColors.primary : AppColors.lightBlue,
        child: SizedBox(
          height: context.h(200),
          width: context.w(153),
          child: Padding(
            padding: const EdgeInsets.all(AppDimens.space12),
            child: Stack(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.topRight,
                      child: AppAssetImage(
                        imagePath: _gender.icon,
                        color: _gender.isSelected
                            ? AppColors.whiteColor
                            : AppColors.darkGrey,
                      ),
                    ),
                    const Spacer(),
                    Text(
                      _gender.name,
                      style: context.x16.weigh800.copyWith(
                          color: _gender.isSelected
                              ? AppColors.whiteColor
                              : AppColors.primary),
                    ),
                    Text(
                      _gender.desc,
                      style: context.md14.weigh400.copyWith(
                          color: _gender.isSelected
                              ? AppColors.whiteColor
                              : AppColors.darkGrey),
                    ),
                  ],
                ),
                if (_gender.isSelected)
                  Align(
                    alignment: Alignment.topLeft,
                    child: CircleAvatar(
                      radius: 12,
                      backgroundColor: AppColors.whiteColor,
                      child: AppAssetImage(
                        imagePath: AppAssets.done,
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ));
  }
}
