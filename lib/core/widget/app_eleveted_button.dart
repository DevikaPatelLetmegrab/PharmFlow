import 'package:flutter/material.dart';
import 'package:pharm_flow/core/app_extension/text_style_extension.dart';
import 'package:pharm_flow/core/config/app_colors.dart';
import 'package:pharm_flow/core/utils/app_size.dart';

import 'package:pharm_flow/core/config/app_dimension.dart';

enum ButtonType {
  elevated,
  outline,
  elevatedWithIcon,
  outLineWithIcon,
}

class AppElevatedButton extends StatelessWidget {
  final ButtonType buttonType;
  final String? buttonName;
  final Color? buttonColor;
  final VoidCallback? onTap;
  final double fontSize;
  final Color? fontColor;
  final Color? outlineColor;
  final Color borderColor;
  final BorderRadius? borderRadius;
  final Widget? childWidget;
  final Widget? icon;
  final double? width;
  final double? height;
  final IconAlignment iconAlignment;

  final EdgeInsetsGeometry? padding;

  const AppElevatedButton(
      {super.key,
      required this.buttonType,
      this.buttonName,
      this.buttonColor = AppColors.primary,
      this.onTap,
      this.fontSize = 14,
      this.fontColor,
      this.outlineColor = AppColors.primary,
      this.borderColor = AppColors.primary,
      this.borderRadius,
      this.childWidget,
      this.icon,
      this.width,
      this.height,
      this.iconAlignment = IconAlignment.start,
      this.padding});

  @override
  Widget build(BuildContext context) {
    Widget child = childWidget ??
        Text(buttonName ?? '',
            textAlign: TextAlign.center,
            maxLines: 1,
            style: context.md14.weigh400.copyWith(
                color: fontColor ?? defaultTextColor,
                overflow: TextOverflow.ellipsis));

    Widget widget = switch (buttonType) {
      ButtonType.elevated => ElevatedButton(
          style: ElevatedButton.styleFrom(
            disabledBackgroundColor: buttonColor,
            elevation: 0,
            visualDensity: VisualDensity.compact,
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            backgroundColor: buttonColor,
            padding: padding,
            shape: ContinuousRectangleBorder(
                borderRadius: borderRadius ??
                    BorderRadius.circular(AppDimens.borderRadius30),
                side: BorderSide(color: borderColor)),
            foregroundColor: fontColor,
          ),
          onPressed: onTap,
          child: child,
        ),
      ButtonType.outline => TextButton(
          style: TextButton.styleFrom(
              shape: ContinuousRectangleBorder(
                borderRadius: borderRadius ??
                    BorderRadius.circular(AppDimens.borderRadius30),
                side: BorderSide(color: borderColor, width: 1),
              ),
              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
              visualDensity: VisualDensity.compact),
          onPressed: onTap,
          child: child,
        ),
      ButtonType.elevatedWithIcon => ElevatedButton.icon(
          style: ElevatedButton.styleFrom(
              disabledBackgroundColor: buttonColor,
              elevation: 0,
              visualDensity: VisualDensity.compact,
              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
              backgroundColor: buttonColor,
              padding: padding,
              shape: ContinuousRectangleBorder(
                borderRadius: borderRadius ??
                    BorderRadius.circular(AppDimens.borderRadius30),
                side: BorderSide(color: borderColor),
              ),
              foregroundColor: fontColor),
          onPressed: onTap,
          icon: icon,
          iconAlignment: iconAlignment,
          label: child,
        ),
      ButtonType.outLineWithIcon => OutlinedButton.icon(
          style: OutlinedButton.styleFrom(
              disabledBackgroundColor: buttonColor,
              elevation: 0,
              visualDensity: VisualDensity.compact,
              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
              padding: padding,
              shape: ContinuousRectangleBorder(
                borderRadius: borderRadius ??
                    BorderRadius.circular(AppDimens.borderRadius30),
                side: BorderSide(color: borderColor),
              ),
              side: BorderSide(color: borderColor),
              foregroundColor: fontColor),
          onPressed: onTap,
          icon: icon,
          iconAlignment: iconAlignment,
          label: child,
        ),
    };

    return SizedBox(
      height: height ?? context.h(50),
      width: width,
      child: widget,
    );
  }

  Color get defaultTextColor {
    return switch (buttonType) {
      ButtonType.elevatedWithIcon ||
      ButtonType.elevated =>
        AppColors.whiteColor,
      ButtonType.outLineWithIcon || ButtonType.outline => AppColors.primary,
    };
  }
}
