import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:pharm_flow/core/app_extension/text_style_extension.dart';
import 'package:pharm_flow/core/config/app_colors.dart';
import 'package:pharm_flow/core/config/app_dimension.dart';
import 'package:pharm_flow/core/model/package_model.dart';
import 'package:pharm_flow/core/utils/app_constants.dart';
import 'package:pharm_flow/core/utils/app_size.dart';
import 'package:pharm_flow/core/utils/squircle/squircle_container.dart';
import 'package:pharm_flow/core/widget/app_asset_image.dart';
import 'package:pharm_flow/core/widget/round_icon.dart';
import 'package:pharm_flow/features/my_booking/presentation/bloc/package_bloc.dart';
import 'package:pharm_flow/features/my_booking/presentation/bloc/package_event.dart';
import 'package:pharm_flow/features/my_booking/presentation/bloc/package_state.dart';

class SelectPackageWidget extends StatefulWidget {
  const SelectPackageWidget({super.key});

  @override
  State<SelectPackageWidget> createState() => _SelectPackageWidgetState();
}

class _SelectPackageWidgetState extends State<SelectPackageWidget> {
  var isSelect;

  @override
  void initState() {
    // TODO: implement initState
    context.read<PackageBloc>().add(FetchListEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.getWidth,
      child: BlocBuilder<PackageBloc, PackageState>(builder: (context, state) {
        return ListView.separated(
          shrinkWrap: true,
          itemCount: state.packageList!.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                context.read<PackageBloc>().add(UpdateEvent(index: index));
              },
              child: Squircle(
                height: context.h(65),
                borderColor: state.selectedModel==state.packageList![index]
                    ? AppColors.primary
                    : AppColors.greyE8Color,
                child: Padding(
                  padding: const EdgeInsets.all(AppDimens.space10),
                  child: Row(
                    children: [
                      RoundIcon(
                        child: AppAssetImage(
                          imagePath: state.packageList![index].icon,
                          size: 20,
                        ),
                      ),
                      Gap(AppDimens.space15),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            state.packageList![index].title,
                            style: context.md14.withBlack,
                          ),
                          Gap(AppDimens.space3),
                          Text(
                            state.packageList![index].content,
                            style: context.s12.withGrey78,
                          )
                        ],
                      ),
                      Spacer(),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "₹ ${state.packageList![index].price}",
                            style: context.md14.withBlack,
                          ),
                          Gap(AppDimens.space3),
                          Text(
                            '/10 Mins',
                            style: context.md14.withBlack.weigh300,
                          )
                        ],
                      ),
                      Gap(AppDimens.space12),

                      // Radio<PackageModel>(
                      //     value: AppConstants.packageList[index],
                      //     groupValue: isSelect,
                      //     onChanged: (PackageModel? value) {
                      //       print(value!.isSelected);
                      //       setState(() {
                      //         isSelect = value;
                      //         AppConstants.packageList.forEach((e) => e.isSelected = false);
                      //         AppConstants.packageList[index].isSelected = true;
                      //       });
                      //     })
                    ],
                  ),
                ),
              ),
            );
          },
          separatorBuilder: (BuildContext context, int index) {
            return const Gap(AppDimens.space12);
          },
        );
      }),
    );
  }
}
