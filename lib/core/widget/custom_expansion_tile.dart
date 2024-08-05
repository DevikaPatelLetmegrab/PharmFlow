import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pharm_flow/core/app_extension/text_style_extension.dart';
import 'package:pharm_flow/core/config/app_colors.dart';
import 'package:pharm_flow/core/utils/squircle/squircle_container.dart';
import 'package:pharm_flow/features/help_and_support/presentation/bloc/expansion_tile_cubit.dart';

class CustomExpansionTile extends StatelessWidget {
  final int index;
  final String title;
  final String subtitle;

  const CustomExpansionTile({
    super.key,
    required this.index,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<ExpansionTileCubit>();
    final state = context.watch<ExpansionTileCubit>().state;
    bool isSelected = state.expandedIndices.contains(index);

    return Squircle(
      borderColor: isSelected ? AppColors.primary : AppColors.borderColorGrey,
      child: Theme(
        data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
        child: ExpansionTile(
          key: PageStorageKey<int>(index),
          title: Text(
            title,
            style: context.md14.weigh400.copyWith(
                color: isSelected ? AppColors.primary : AppColors.blackColor),
          ),
          onExpansionChanged: (expanded) {
            cubit.toggleTile(index);
          },
          trailing: Icon(
            isSelected ? Icons.remove : Icons.add,
            color: isSelected ? AppColors.primary : AppColors.blackColor,
          ),
          children: [
            ListTile(
              subtitle: Text(
                subtitle,
                style: context.s12.weigh400.withGrey78,
              ),
            )
          ],
        ),
      ),
    );
  }
}
