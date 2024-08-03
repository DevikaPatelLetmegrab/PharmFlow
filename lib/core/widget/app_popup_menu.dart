import 'package:flutter/material.dart';
import 'package:pharm_flow/core/config/app_colors.dart';
import 'package:pharm_flow/core/config/app_dimension.dart';

class AppPopupMenu<T> extends StatelessWidget {
  final List<PopupMenuItem<T>> items;
  final Color? iconColor;
  final BoxConstraints? constraints;
  final void Function(T item)? onSelected;

  const AppPopupMenu(
      {super.key,
      required this.items,
      this.iconColor,
      this.onSelected,
      this.constraints});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      shape: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppDimens.borderRadius15),
          borderSide: BorderSide.none),
      iconColor: iconColor,
      padding: EdgeInsets.zero,
      constraints: constraints ?? const BoxConstraints(),
      onSelected: onSelected,
      itemBuilder: (BuildContext context) {
        return items;
      },
      child: Container(
        decoration:
            const BoxDecoration(shape: BoxShape.circle, color: Colors.white),
        child: const Padding(
          padding: EdgeInsets.all(AppDimens.space5),
          child: Icon(
            Icons.more_vert_rounded,
            color: AppColors.darkGrey,
          ),
        ),
      ),
    );
  }
}
