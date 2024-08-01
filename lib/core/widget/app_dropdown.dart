import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:pharm_flow/core/app_extension/text_style_extension.dart';
import 'package:pharm_flow/core/config/app_assets.dart';
import 'package:pharm_flow/core/config/app_colors.dart';
import 'package:pharm_flow/core/config/app_dimension.dart';
import 'package:pharm_flow/core/utils/app_size.dart';
import 'package:pharm_flow/core/utils/squircle/squircle_inputborder.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:pharm_flow/core/widget/app_search_field.dart';
import 'package:pharm_flow/core/widget/asset_icon.dart';

class AppDropdown<T> extends StatelessWidget {
  final T? value;
  final List<DropdownMenuItem<T>> items;
  final String? hintText;
  final String? label;
  final Color? textColor;
  final Color? bgColor;
  final Color? iconColor;
  final FontWeight? hintTextWeight;
  final EdgeInsetsGeometry? contentPadding;
  final Function(T?)? onChanged;
  final double? height;
  final double? width;
  final Color? borderColor;
  final double? dropdownHeight;
  final double? dropdownWidth;
  final Color? dropdownAreaColor;
  final bool enabled;
  final TextStyle? hintTextStyle;
  final TextStyle? fontTextStyle;
  final TextEditingController? controller;
  final bool searchEnable;
  final String iconPath;

  final SearchMatchFn? function;

  const AppDropdown({
    required this.items,
    super.key,
    this.value,
    this.label,
    this.hintText,
    this.hintTextWeight,
    this.bgColor,
    this.borderColor,
    this.iconColor,
    this.height,
    this.width,
    this.contentPadding = const EdgeInsets.symmetric(horizontal: 10),
    this.onChanged,
    this.dropdownHeight,
    this.dropdownWidth,
    this.dropdownAreaColor,
    this.textColor,
    this.enabled = true,
    this.hintTextStyle,
    this.fontTextStyle,
    this.searchEnable = false,
    this.controller,
    this.function,
    this.iconPath = '',
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        if (label != null)
          Column(
            children: [
              Text(
                label ?? '',
                style: context.md14.withBlack.weigh400,
              ),
              const Gap(AppDimens.space5)
            ],
          ),
        DropdownButtonFormField2<T>(
          items: items,
          onChanged: onChanged,
          value: value,
          style: fontTextStyle ?? context.md14,
          isDense: true,
          hint: Text(
            hintText ?? '',
            textAlign: TextAlign.start,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: context.md14.withGrey78
                .copyWith(fontWeight: hintTextWeight),
          ),
          decoration: InputDecoration(
            isDense: true,
            disabledBorder: SquircleInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide(
                    color: borderColor ?? AppColors.borderColorGrey)),
            border: SquircleInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide(
                    color: borderColor ?? AppColors.borderColorGrey)),
            enabledBorder: SquircleInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide(
                    color: borderColor ?? AppColors.borderColorGrey)),
            errorBorder: SquircleInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: const BorderSide(color: AppColors.errorRed)),
            focusedBorder: SquircleInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide(
                    color: borderColor ?? AppColors.borderColorGrey)),
            focusedErrorBorder: SquircleInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: const BorderSide(color: AppColors.errorRed)),
            contentPadding: EdgeInsets.zero,
            filled: bgColor != null,
            fillColor: bgColor,
            enabled: enabled,
          ),
          buttonStyleData: ButtonStyleData(
            height: height ?? context.w(AppDimens.inputFieldHeight),
            // padding: contentPadding ?? const EdgeInsets.only(right: 16),
            decoration: BoxDecoration(
              color: bgColor,
              borderRadius: BorderRadius.circular(30),
            ),
          ),
          iconStyleData: IconStyleData(
            openMenuIcon: RotatedBox(
              quarterTurns: 3,
              child: Padding(
                padding: const EdgeInsets.all(AppDimens.space8),
                child: AssetIcon(
                  assetName: AppAssets.arrowRightIcon,
                  color: AppColors.blackColor,
                ),
              ),
            ),
            icon: Padding(
              padding: const EdgeInsets.all(AppDimens.space8),
              child: AssetIcon(
                assetName: AppAssets.arrowDownIcon,
                color: AppColors.blackColor,
              ),
            ),
          ),
          dropdownSearchData: searchEnable
              ? DropdownSearchData(
                  searchController: controller,
                  searchMatchFn: function,
                  searchInnerWidget: const Padding(
                    padding: EdgeInsets.only(right: 10, left: 10, top: 10),
                    child: AppSearchField(hint: 'Search..'),
                  ),
                  searchInnerWidgetHeight: 50)
              : null,
          dropdownStyleData: DropdownStyleData(
            // padding: const EdgeInsets.only(right: 16),
            elevation: !searchEnable ? 0 : 1,
            width: !searchEnable ? dropdownWidth : null,
            maxHeight: !searchEnable ? dropdownHeight : null,
            decoration: !searchEnable
                ? BoxDecoration(
                    borderRadius:
                        BorderRadius.circular(AppDimens.borderRadius10),
                    border: Border.all(color: AppColors.borderColorGrey),
                  )
                : const BoxDecoration(),
          ),
        )
      ],
    );
  }
}
