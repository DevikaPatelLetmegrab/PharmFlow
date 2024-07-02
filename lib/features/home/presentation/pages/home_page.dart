import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:pharm_flow/core/app_extension/text_style_extension.dart';
import 'package:pharm_flow/core/config/app_assets.dart';
import 'package:pharm_flow/core/config/app_colors.dart';
import 'package:pharm_flow/core/config/app_dimension.dart';
import 'package:pharm_flow/core/utils/app_size.dart';
import 'package:pharm_flow/core/widget/app_asset_image.dart';
import 'package:pharm_flow/core/widget/app_icon_button.dart';
import 'package:pharm_flow/core/widget/app_search_field.dart';
import 'package:pharm_flow/core/widget/asset_icon.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final PageController controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(AppDimens.space15),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Delivery Location',
                              style: context.s12.withGrey78,
                            ),
                            const Gap(AppDimens.space4),
                            Row(
                              children: [
                                AssetIcon(
                                  assetName: AppAssets.locationIcon,
                                  color: AppColors.lightPrimary,
                                ),
                                const Gap(AppDimens.space4),
                                Text(
                                  'Surat 395003',
                                  style: context.md14,
                                ),
                                const Gap(AppDimens.space4),
                                const Icon(Icons.keyboard_arrow_down)
                              ],
                            )
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          AppIconButton(
                            imagePath: AppAssets.notificationIcon,
                          ),
                          AppIconButton(
                            imagePath: AppAssets.bagIcon,
                          ),
                        ],
                      ),
                    ],
                  ),
                  const Gap(AppDimens.space15),
                  AppSearchField(
                    hint: 'Search',
                    showSuffix: true,
                    suffix: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: AppDimens.space16),
                      child: AssetIcon(
                        assetName: AppAssets.filterIcon,
                        size: AppDimens.imageSize20,
                        color: AppColors.lightPrimary,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: context.h(120),
              child: ListView.separated(
                itemCount: 10,
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.only(left: AppDimens.space15),
                separatorBuilder: (context, index) {
                  return const SizedBox(width: 10);
                },
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      AppAssetImage(
                        imagePath: AppAssets.image,
                        size: 100,
                      ),
                      Text('medicines'),
                    ],
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(AppDimens.space15),
              child: Column(
                children: [
                  SizedBox(
                    height: 200,
                    child: PageView(
                      children: [
                        AppAssetImage(
                          imagePath: AppAssets.image1,
                          width: context.getWidth,
                        ),
                        AppAssetImage(
                          imagePath: AppAssets.image1,
                          width: context.getWidth,
                        ),
                        AppAssetImage(
                          imagePath: AppAssets.image1,
                          width: context.getWidth,
                        ),
                      ],
                      onPageChanged: (index) {},
                    ),
                  ),
                  SmoothPageIndicator(
                    controller: controller,
                    count: 3,
                    effect: const ScrollingDotsEffect(
                      dotHeight: 12,
                      dotWidth: 12,
                      // type: WormType.thinUnderground,
                      dotColor: AppColors.primary,
                      activeDotColor: AppColors.primary,
                      paintStyle: PaintingStyle.stroke,
                    ),

                    // ScrollingDotsEffect(
                    //   activeStrokeWidth: 2.6,
                    //   activeDotScale: 1.3,
                    //   maxVisibleDots: 5,
                    //   radius: 8,
                    //   spacing: 10,
                    //   dotHeight: 12,
                    //   dotWidth: 12,
                    // ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
