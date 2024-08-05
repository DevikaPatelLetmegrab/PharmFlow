import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:pharm_flow/core/app_extension/text_style_extension.dart';
import 'package:pharm_flow/core/config/app_dimension.dart';
import 'package:pharm_flow/core/utils/app_size.dart';
import 'package:pharm_flow/core/utils/squircle/squircle_container.dart';
import 'package:pharm_flow/core/widget/custom_expansion_tile.dart';
import 'package:pharm_flow/features/help_and_support/presentation/bloc/expansion_tile_cubit.dart';
import 'package:pharm_flow/features/help_and_support/presentation/bloc/expansion_tile_state.dart';

class FaqAllTabviewItem extends StatefulWidget {
  const FaqAllTabviewItem({super.key});

  @override
  State<FaqAllTabviewItem> createState() => _FaqAllTabviewItemState();
}

class _FaqAllTabviewItemState extends State<FaqAllTabviewItem> {
  var isSelect;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('All', style: context.x16.weigh400),
          const Gap(AppDimens.space10),
          SizedBox(
            height: context.getHeight - 350,
            child: BlocProvider(
              create: (context) => ExpansionTileCubit(),
              child: BlocBuilder<ExpansionTileCubit, ExpansionTileState>(
                builder: (context, state) {
                  return ListView(
                    shrinkWrap: true,
                    children: const [
                      CustomExpansionTile(
                        index: 0,
                        title: 'How do I refill my prescription?',
                        subtitle:
                            'Contact the pharmacy in person, by phone, or through their website or app.',
                      ),
                      Gap(AppDimens.space10),
                      CustomExpansionTile(
                        index: 1,
                        title:
                            'What should I do if I have questions about my medication?',
                        subtitle:
                            'Contact the pharmacy in person, by phone, or through their website or app.',
                      ),
                      Gap(AppDimens.space10),
                      CustomExpansionTile(
                        index: 2,
                        title:
                            'What should I do if I have questions about my medication?',
                        subtitle:
                            'Contact the pharmacy in person, by phone, or through their website or app.',
                      ),
                      Gap(AppDimens.space10),
                      CustomExpansionTile(
                        index: 3,
                        title:
                            'What should I do if I have questions about my medication?',
                        subtitle:
                            'Contact the pharmacy in person, by phone, or through their website or app.',
                      ),
                      Gap(AppDimens.space10),
                      CustomExpansionTile(
                        index: 4,
                        title:
                            'What should I do if I have questions about my medication?',
                        subtitle:
                            'Contact the pharmacy in person, by phone, or through their website or app.',
                      ),
                      Gap(AppDimens.space10),
                      CustomExpansionTile(
                        index: 5,
                        title:
                            'What should I do if I have questions about my medication?',
                        subtitle:
                            'Contact the pharmacy in person, by phone, or through their website or app.',
                      ),
                    ],
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
