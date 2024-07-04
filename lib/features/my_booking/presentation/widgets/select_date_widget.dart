import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:pharm_flow/core/app_extension/text_style_extension.dart';
import 'package:pharm_flow/core/config/app_colors.dart';
import 'package:pharm_flow/core/config/app_dimension.dart';
import 'package:pharm_flow/core/model/date_model.dart';
import 'package:pharm_flow/core/utils/app_size.dart';
import 'package:pharm_flow/core/utils/squircle/squircle_container.dart';

class SelectDateWidget extends StatefulWidget {
  final List<DateModel> list;

  const SelectDateWidget({super.key, required this.list});

  @override
  State<SelectDateWidget> createState() => _SelectDateWidgetState();
}

class _SelectDateWidgetState extends State<SelectDateWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.getWidth,
      height: context.h(70),
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: widget.list.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                widget.list.forEach((e) => e.isSelected = false);
                widget.list[index].isSelected = true;
              });
            },
            child: Squircle(
              width: context.w(70),
              backgroundColor: widget.list[index].isSelected
                  ? AppColors.primary
                  : AppColors.lightBlue,
              borderColor: Colors.transparent,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      widget.list[index].title,
                      style: context.md14.copyWith(
                          color: widget.list[index].isSelected
                              ? AppColors.whiteColor
                              : AppColors.primary),
                    ),
                    const Gap(AppDimens.space3),
                    Text(
                      widget.list[index].content,
                      style: context.md14.copyWith(
                          color: widget.list[index].isSelected
                              ? AppColors.whiteColor
                              : AppColors.primary),
                    )
                  ],
                ),
              ),
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return const Gap(AppDimens.space10);
        },
      ),
    );
  }
}
