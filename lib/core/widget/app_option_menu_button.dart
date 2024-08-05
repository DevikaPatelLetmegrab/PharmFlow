import 'package:flutter/material.dart';
import 'package:pharm_flow/core/config/app_colors.dart';
import 'package:pharm_flow/core/config/app_dimension.dart';

class AppOptionMenuButton<T> extends StatelessWidget {
  final List<PopupMenuItem<T>> items;
  final Color? iconColor;
  final void Function(T item)? onSelected;

  const AppOptionMenuButton(
      {super.key, required this.items, this.onSelected, this.iconColor});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<T>(
      offset: Offset(0, 10),
      padding: EdgeInsets.zero,
      shape: const RoundedRectangleBorder(
          borderRadius:
              BorderRadius.all(Radius.circular(AppDimens.borderRadius15))),
      constraints: const BoxConstraints(),
      onSelected: onSelected,
      itemBuilder: (ctx) {
        return items;
      },
      child: Container(
        decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.white),
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Icon(
            Icons.more_vert_rounded,
            color: AppColors.grey78Color,
          ),
        ),
      ),
    );
  }
}
