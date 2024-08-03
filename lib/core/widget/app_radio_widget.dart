import 'package:flutter/material.dart';
import 'package:pharm_flow/core/app_extension/text_style_extension.dart';
import 'package:pharm_flow/core/config/app_colors.dart';
import 'package:pharm_flow/core/config/app_dimension.dart';
import 'package:pharm_flow/core/utils/squircle/squircle_inputborder.dart';
import 'package:pharm_flow/core/widget/app_check_box.dart';


class AppRadioWidget<T> extends StatelessWidget {
  final T? groupValue;
  final T value;
  final void Function(T? value)? onChanged;
  final String label;
  final TextStyle? lableStyle;
  final Color? disableColor;
  final Color? primaryColor;
  final SelectionViewType viewType;

  const AppRadioWidget(
      {required this.groupValue,
      required this.value,
      required this.onChanged,
      this.label = '',
      super.key,
      this.lableStyle,
      this.viewType = SelectionViewType.button,
      this.primaryColor,
      this.disableColor});

  @override
  Widget build(BuildContext context) {
    return switch (viewType) {
      // TODO: Handle this case.
      SelectionViewType.button => InkWell(
          onTap: () {
            onChanged?.call(value);
          },
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Radio<T>(
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                value: value,
                groupValue: groupValue,
                onChanged: onChanged,
                fillColor: WidgetStateColor.resolveWith((states) {
                  if (states.contains(WidgetState.selected)) {
                    return primaryColor ?? AppColors.primary;
                  }
                  return disableColor ?? AppColors.grey78Color;
                }),
                visualDensity: const VisualDensity(
                    horizontal: VisualDensity.minimumDensity,
                    vertical: VisualDensity.minimumDensity),
              ),
              Flexible(
                child: Text(label, style: context.md14),
              )
            ],
          ),
        ),
      SelectionViewType.tile => Material(
          child: Theme(
            data: Theme.of(context).copyWith(
                listTileTheme: const ListTileThemeData(horizontalTitleGap: 5)),
            child: RadioListTile<T>(
              shape: SquircleInputBorder(
                  borderRadius: BorderRadius.circular(AppDimens.borderRadius30),
                  borderSide: const BorderSide(color: AppColors.greyD9Color)),
              value: value,
              dense: true,
              onChanged: onChanged,
              groupValue: groupValue,
              fillColor: WidgetStateColor.resolveWith((states) {
                if (states.contains(WidgetState.selected)) {
                  return primaryColor ?? AppColors.primary;
                }
                return disableColor ?? AppColors.grey78Color;
              }),
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              visualDensity: VisualDensity.compact,
              contentPadding: EdgeInsets.zero,
              title: Text(
                label,
              style: lableStyle ?? context.md14.weigh500.withGrey78,
              )
            ),
          ),
        ),
    };
  }
}
