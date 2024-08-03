import 'package:flutter/material.dart';
import 'package:pharm_flow/core/app_extension/text_style_extension.dart';
import 'package:pharm_flow/core/config/app_colors.dart';
import 'package:pharm_flow/core/utils/squircle/squircle_decoration.dart';

enum SelectionViewType { tile, button }

class AppCheckBox extends StatelessWidget {
  final bool value;
  final void Function(bool? value)? onChanged;
  final Color? disableColor;
  final Color? activeColor;
  final Color? borderColor;
  final String? label;
  final Widget? labelChild;
  final TextStyle? labelStyle;
  final SelectionViewType viewType;

  const AppCheckBox(
      {required this.value,
      required this.onChanged,
      super.key,
      this.disableColor,
      this.borderColor,
      this.viewType = SelectionViewType.button,
      this.label,
      this.labelChild,
      this.activeColor,
      this.labelStyle});

  @override
  Widget build(BuildContext context) {
    return switch (viewType) {
      SelectionViewType.tile => Theme(
          data: Theme.of(context).copyWith(
              listTileTheme: const ListTileThemeData(
            titleAlignment: ListTileTitleAlignment.top,
          )),
          child: CheckboxListTile(
            selected: value,
            controlAffinity: ListTileControlAffinity.leading,
            contentPadding: EdgeInsets.zero,
            visualDensity: VisualDensity.compact,
            value: value,
            onChanged: onChanged,
            title: labelChild ??
                Text(
                  label!,
                  style: labelStyle ?? context.s12.weigh400,
                ),
          ),
        ),
      SelectionViewType.button => Row(
          children: [
            Checkbox(
              // shape: SquircleDecoration(radius: 10).shape,
              splashRadius: 20,
              side: BorderSide(
                  color: value
                      ? borderColor ?? AppColors.primary
                      : AppColors.grey78Color,
                  width: 2),
              value: value,
              visualDensity: VisualDensity.compact,
              fillColor: WidgetStateProperty.resolveWith((states) {
                if (states.contains(WidgetState.selected)) {
                  return activeColor ?? AppColors.primary;
                }
                return Colors.white;
              }),
              onChanged: onChanged,
            ),
            if (labelChild != null)
              Expanded(child: labelChild!)
            else if (label != null)
              Expanded(
                child: Text(
                  label!,
                  style: labelStyle ?? context.s12.weigh400,
                ),
              ),
          ],
        ),
    };
  }
}
