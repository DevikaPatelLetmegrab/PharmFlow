import 'package:flutter/material.dart';
import 'package:pharm_flow/core/app_extension/text_style_extension.dart';
import 'package:pharm_flow/core/config/app_assets.dart';
import 'package:pharm_flow/core/config/app_colors.dart';
import 'package:pharm_flow/core/config/app_dimension.dart';
import 'package:pharm_flow/core/widget/app_icon_button.dart';
import 'package:pharm_flow/core/widget/square_icon.dart';

class CommonAppBar extends StatelessWidget implements PreferredSizeWidget {
  final List<Widget> actions;
  final String title;
  final Widget? leading;
  final bool showLeading;
  final PreferredSizeWidget? bottom;
  final double? titleSpacing;
  final bool centerTitle;

  const CommonAppBar(
      {super.key,
      this.actions = const [],
      required this.title,
      this.leading,
      this.showLeading = true,
      this.bottom,
      this.titleSpacing,
      this.centerTitle = false});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: context.x16.withBlack,
      ),
      centerTitle: centerTitle,
      leading: showLeading ? leading ?? AppIconButton.back() : null,
      bottom: bottom,
      titleSpacing: titleSpacing,
      actions: actions,
      surfaceTintColor: AppColors.transparent,
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(
      kToolbarHeight + (bottom != null ? kTextTabBarHeight : 0));
}
