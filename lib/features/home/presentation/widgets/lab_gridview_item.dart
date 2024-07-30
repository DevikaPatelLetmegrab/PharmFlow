import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:pharm_flow/core/app_extension/text_style_extension.dart';
import 'package:pharm_flow/core/config/app_assets.dart';
import 'package:pharm_flow/core/config/app_dimension.dart';
import 'package:pharm_flow/core/widget/app_asset_image.dart';
import 'package:pharm_flow/core/widget/app_eleveted_button.dart';

class LabGridviewItem extends StatelessWidget {
  Color? bgColor;
  bool isLab;

  LabGridviewItem({super.key, @required this.bgColor, this.isLab = true});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomRight,
      children: [
        isLab
            ? Container(
                padding: const EdgeInsets.all(AppDimens.space10),
                decoration: BoxDecoration(
                  color: bgColor, //AppColors.greyD9Color,
                  borderRadius: BorderRadius.circular(AppDimens.circleRadius20),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '20% OFF',
                      style: context.md14.weigh500.withRed,
                    ),
                    const Gap(AppDimens.space5),
                    Text(
                      'Complete Blood Count (CBC)',
                      style: context.md14,
                    ),
                    const Gap(AppDimens.space10),
                    const Text(
                      '₹999',
                      style: TextStyle(
                        decoration: TextDecoration.lineThrough,
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    Text(
                      '799',
                      style: context.x16,
                    )
                  ],
                ),
              )
            : Container(
                padding: const EdgeInsets.all(AppDimens.space20),
                decoration: BoxDecoration(
                  color: bgColor,
                  borderRadius: BorderRadius.circular(AppDimens.circleRadius20),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Neurological Disorders',
                      style: context.md14,
                    ),
                    const Gap(AppDimens.space10),
                    AppButton(
                      buttonType: ButtonType.elevated,
                      buttonName: 'Book',
                      height: 35,
                      borderRadius:
                          BorderRadius.circular(AppDimens.borderRadius20),
                    )
                  ],
                ),
              ),
        AppAssetImage(
          imagePath: AppAssets.docLab,
          size: 100,
        )
      ],
    );
  }
}
