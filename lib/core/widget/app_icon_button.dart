import 'package:flutter/material.dart';
import 'package:pharm_flow/core/config/app_assets.dart';
import 'package:pharm_flow/core/routes/navigation_services.dart';

class AppIconButton extends StatelessWidget {
  final String? imagePath;
  final VoidCallback? onTap;
  final Widget? child;
  final Color? iconColor;
  final double? iconSize;
  final BoxConstraints? boxConstraints;
  final bool shrinkButton;
  final EdgeInsetsGeometry? padding;

  const AppIconButton(
      {super.key,
      this.imagePath,
      this.onTap,
      this.child,
      this.iconColor,
      this.iconSize,
      this.boxConstraints,
      this.shrinkButton = false,
      this.padding});

  factory AppIconButton.back({
    VoidCallback? onPressed,
    Color? iconColor,
    double? iconSize,
    BoxConstraints? constraints,
    bool? shrinkButton,
    EdgeInsetsGeometry? padding,
  }) =>
      AppIconButton(
        imagePath: AppAssets.backIcon,
        iconColor: iconColor,
        iconSize: iconSize,
        padding: padding,
        shrinkButton: shrinkButton = false,
        boxConstraints: constraints,
        onTap: onPressed ?? () => NavigationServices().pop(),
      );

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onTap,
      padding: padding,
      constraints: boxConstraints,
      style: IconButton.styleFrom(
        tapTargetSize: shrinkButton
            ? MaterialTapTargetSize.shrinkWrap
            : MaterialTapTargetSize.padded,
      ),
      icon: child ??
          Image.asset(
            imagePath ?? AppAssets.logo,
            color: iconColor,
            height: iconSize ?? 24,
            width: iconSize ?? 24,
          ),
    );
  }
}
