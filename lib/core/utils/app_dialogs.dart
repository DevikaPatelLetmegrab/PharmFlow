import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:pharm_flow/core/app_extension/text_style_extension.dart';
import 'package:pharm_flow/core/config/app_assets.dart';
import 'package:pharm_flow/core/config/app_dimension.dart';
import 'package:pharm_flow/core/routes/navigation_services.dart';
import 'package:pharm_flow/core/utils/app_size.dart';
import 'package:pharm_flow/core/utils/squircle/squircle_container.dart';
import 'package:pharm_flow/core/widget/app_asset_image.dart';
import 'package:pharm_flow/core/widget/app_eleveted_button.dart';

import 'package:pharm_flow/core/config/app_colors.dart';
import 'package:pharm_flow/core/widget/circle_info_image.dart';

class AppDialogs {
  static void planDialog({required Widget child}) {
    showGeneralDialog(
        context: NavigationServices().getNavigationContext(),
        pageBuilder: (context, animation, secondaryAnimation) {
          return child;
        });
  }

  static void customGeneralDialog(
      {String? rightButtonText,
      void Function()? rightButtonOnTap,
      String? leftButtonText,
      void Function(bool)? onDismissDialog,
      void Function()? leftButtonOnTap,
      Color? topIconColor = AppColors.primary,
      Color? titleColor = AppColors.blackColor,
      Color? descriptionColor = AppColors.errorRed,
      String? topIconPath,
      String? titleText,
      String? descriptionText,
      Widget? child,
      required BuildContext context}) {
    showGeneralDialog(
      context: context,
      barrierDismissible: true,
      barrierLabel: MaterialLocalizations.of(context).modalBarrierDismissLabel,
      barrierColor: AppColors.blackColor.withOpacity(0.1),
      pageBuilder: (context, animation, secondaryAnimation) {
        return PopScope(
          canPop: true,
          onPopInvoked: onDismissDialog,
          child: Padding(
            padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom),
            child: Center(
              child: Squircle(
                borderColor: AppColors.whiteColor,
                customRadius: BorderRadius.circular(10),
                backgroundColor: AppColors.whiteColor,
                child: Padding(
                  padding: const EdgeInsets.all(AppDimens.space30),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      topIconPath == null
                          ? const SizedBox()
                          : Column(
                              children: [
                                CircleInfoImage(assetImage: topIconPath),
                                const Gap(10),
                              ],
                            ),
                      titleText == null
                          ? const SizedBox()
                          : Column(
                              children: [
                                Column(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: context.w(25)),
                                      child: Text(
                                        titleText,
                                        textAlign: TextAlign.center,
                                        style: context.x18.weigh500
                                            .copyWith(color: titleColor),
                                      ),
                                    ),
                                    const Gap(12),
                                  ],
                                ),
                              ],
                            ),
                      descriptionText == null
                          ? const SizedBox()
                          : Text(
                              descriptionText,
                              textAlign: TextAlign.center,
                              style: context.s12.weigh400
                                  .copyWith(color: descriptionColor),
                            ),
                      const Gap(12),
                      if (child != null) ...[
                        child,
                        const Gap(20),
                      ],
                      leftButtonText == null
                          ? AppElevatedButton(
                              buttonType: ButtonType.elevated,
                              onTap: rightButtonOnTap,
                              buttonName: rightButtonText,
                              fontSize: 16,
                              fontColor: AppColors.whiteColor,
                              buttonColor: AppColors.primary,
                            )
                          : Row(
                              children: [
                                Expanded(
                                  child: AppElevatedButton(
                                    buttonType: ButtonType.outline,
                                    onTap: leftButtonOnTap,
                                    buttonName: leftButtonText,
                                    fontSize: 15,
                                    fontColor: AppColors.errorRed,
                                    outlineColor: AppColors.errorRed,
                                  ),
                                ),
                                const Gap(12),
                                Expanded(
                                  child: AppElevatedButton(
                                    buttonType: ButtonType.elevated,
                                    onTap: rightButtonOnTap,
                                    buttonName: rightButtonText,
                                    fontSize: 15,
                                    fontColor: AppColors.whiteColor,
                                    buttonColor: AppColors.primary,
                                  ),
                                ),
                              ],
                            ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
      transitionBuilder: (_, anim, __, child) {
        Tween<Offset> tween;
        if (anim.status == AnimationStatus.reverse) {
          tween = Tween(begin: const Offset(0, 0), end: Offset.zero);
        } else {
          tween = Tween(begin: const Offset(0, 0), end: Offset.zero);
        }

        return FadeTransition(
          opacity: anim,
          child: child,
        );
      },
    );
  }

  static showAlertDialogBox({
    required String title,
    required String btnName,
    String? content,
    bool? popup,
    Color? titleColor,
    Color? contentColor,
    void Function()? onTap,
  }) {
    showDialog(
        context: NavigationServices().getNavigationContext(),
        builder: (ctx) => PopScope(
              canPop: popup ?? true,
              child: AlertDialog(
                actionsAlignment: MainAxisAlignment.center,
                title: Text(
                  title,
                  style:
                      NavigationServices().getNavigationContext().x16.withBlack,
                ),
                icon: AppAssetImage(
                  imagePath: AppAssets.done,
                  size: 70,
                ),
                content: Text(
                  content ?? '',
                  textAlign: TextAlign.center,
                  style: NavigationServices()
                      .getNavigationContext()
                      .md14
                      .withGrey78,
                ),
                actions: [
                  AppElevatedButton(
                    onTap: onTap,
                    buttonType: ButtonType.elevated,
                    buttonName: btnName,
                  ),
                ],
              ),
            ));
  }
}
