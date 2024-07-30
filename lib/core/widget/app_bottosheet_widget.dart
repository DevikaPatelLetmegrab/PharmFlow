import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:pharm_flow/core/config/app_colors.dart';
import 'package:pharm_flow/core/routes/navigation_services.dart';
import 'package:pharm_flow/core/utils/app_size.dart';
import 'package:pharm_flow/core/utils/squircle/squircle_container.dart';


class AppBottomSheet {
  static final AppBottomSheet _instance = AppBottomSheet._internal();

  AppBottomSheet._internal();

  factory AppBottomSheet() => _instance;

  show({
    required Widget child,
    double? height,
    EdgeInsetsGeometry? padding =
        const EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 16),
  }) {
    return showModalBottomSheet(
      context: NavigationServices().getNavigationContext(),
      isScrollControlled: true,
      useSafeArea: true,
      useRootNavigator: false,
      backgroundColor: Colors.transparent,
      clipBehavior: Clip.hardEdge,
      builder: (context) {
        return Scaffold(
          backgroundColor: AppColors.transparent,
          resizeToAvoidBottomInset: true,
          body: GestureDetector(
            onTap: () {
              NavigationServices().pop();
            },
            child: const ColoredBox(
              color: Colors.transparent,
              child: SizedBox.expand(),
            ),
          ),
          bottomSheet: Squircle(
            padding: padding,
            backgroundColor: AppColors.whiteColor,
            width: context.getWidth,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Squircle(
                    height: 4,
                    width: context.w(100),
                    backgroundColor: AppColors.greyD9Color,
                  ),
                  const Gap(10),
                  child,
                ],
              ),
            ),
          ),
        );
      },
    );
  }

}
