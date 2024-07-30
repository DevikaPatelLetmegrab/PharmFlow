import 'dart:io';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:pharm_flow/core/app_extension/text_style_extension.dart';
import 'package:pharm_flow/core/config/app_assets.dart';
import 'package:pharm_flow/core/config/app_colors.dart';
import 'package:pharm_flow/core/config/app_dimension.dart';
import 'package:pharm_flow/core/helper/image_handler.dart';
import 'package:pharm_flow/core/routes/navigation_services.dart';
import 'package:pharm_flow/core/utils/app_size.dart';
import 'package:pharm_flow/core/utils/squircle/squircle_border.dart';
import 'package:pharm_flow/core/utils/squircle/squircle_container.dart';
import 'package:pharm_flow/core/widget/app_icon_button.dart';
import 'package:pharm_flow/core/widget/round_icon.dart';
import 'package:table_calendar/table_calendar.dart';

class AppBottomSheet {
  static final AppBottomSheet _instance = AppBottomSheet._internal();

  AppBottomSheet._internal();

  factory AppBottomSheet() => _instance;

  show({
    required Widget child,
    double? height,
    EdgeInsetsGeometry? padding =
        const EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 16),
  }) {
    return showModalBottomSheet(
      context: NavigationServices().getNavigationContext(),
      isScrollControlled: true,
      useSafeArea: true,
      useRootNavigator: false,
      backgroundColor: Colors.transparent,
      clipBehavior: Clip.hardEdge,
      builder: (context) {
        return Scaffold(
          backgroundColor: AppColors.transparent,
          resizeToAvoidBottomInset: true,
          body: GestureDetector(
            onTap: () {
              NavigationServices().pop();
            },
            child: const ColoredBox(
              color: Colors.transparent,
              child: SizedBox.expand(),
            ),
          ),
          bottomSheet: Squircle(
            padding: padding,
            backgroundColor: AppColors.appBackGroundColor,
            width: context.getWidth,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Squircle(
                    height: 4,
                    width: context.w(100),
                    backgroundColor: AppColors.greyD9Color,
                  ),
                  const Gap(10),
                  child,
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Future<File?> showVideoPicker({
    double? height,
    EdgeInsetsGeometry? padding =
        const EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 16),
  }) async {
    var result = await showModalBottomSheet(
      context: NavigationServices().getNavigationContext(),
      isScrollControlled: true,
      useSafeArea: true,
      useRootNavigator: false,
      shape: const CustomSquricleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(15),
          topRight: Radius.circular(15),
        ),
      ),
      backgroundColor: Colors.transparent,
      clipBehavior: Clip.hardEdge,
      builder: (context) {
        return Scaffold(
          backgroundColor: AppColors.transparent,
          resizeToAvoidBottomInset: true,
          body: GestureDetector(
            onTap: () {
              NavigationServices().pop();
            },
            child: const ColoredBox(
              color: Colors.transparent,
              child: SizedBox.expand(),
            ),
          ),
          bottomSheet: Container(
            padding: padding,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Squircle(
                  height: 4,
                  width: context.w(100),
                  backgroundColor: AppColors.greyD9Color,
                ),
                const Gap(10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () async {
                        var file =
                            await ImageHandler().pickVideo(ImageSource.camera);
                        if (file != null) {
                          NavigationServices().pop(File(file.path));
                        }
                      },
                      child: Column(
                        children: [
                          RoundIcon(
                            iconPath: AppAssets.image,
                            iconPadding: const EdgeInsets.all(8),
                            radius: 34,
                            iconSize: 35,
                            bgopacity: .2,
                          ),
                          const Gap(8),
                          Text(
                            'Record Video',
                            style: context.x16.weigh400.withBlack,
                          ),
                        ],
                      ),
                    ),
                    Gap(context.h(50)),
                    GestureDetector(
                      onTap: () async {
                        var file =
                            await ImageHandler().pickVideo(ImageSource.gallery);
                        if (file != null) {
                          NavigationServices().pop(File(file.path));
                        }
                      },
                      child: Column(
                        children: [
                           RoundIcon(
                            iconPath: AppAssets.image,
                            radius: 34,
                            iconSize: 35,
                             bgopacity: .2,
                          ),
                          const Gap(8),
                          Text(
                            'upload Video',
                            style: context.x16.weigh400.withBlack,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
    if (result is File) {
      return result;
    }
    return null;
  }

  Future<File?> showImagePicker({
    double? height,
    EdgeInsetsGeometry? padding =
        const EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 16),
  }) async {
    var result = await showModalBottomSheet(
      context: NavigationServices().getNavigationContext(),
      isScrollControlled: true,
      useSafeArea: true,
      useRootNavigator: false,
      shape: const CustomSquricleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(15),
          topRight: Radius.circular(15),
        ),
      ),
      backgroundColor: Colors.transparent,
      clipBehavior: Clip.hardEdge,
      builder: (context) {
        return Scaffold(
          backgroundColor: AppColors.transparent,
          resizeToAvoidBottomInset: true,
          body: GestureDetector(
            onTap: () {
              NavigationServices().pop();
            },
            child: const ColoredBox(
              color: Colors.transparent,
              child: SizedBox.expand(),
            ),
          ),
          bottomSheet: Container(
            padding: padding,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Squircle(
                  height: 4,
                  width: context.w(100),
                  backgroundColor: AppColors.greyD9Color,
                ),
                const Gap(AppDimens.space12),
                Text(
                  'Upload Photo',
                  style: context.x18.weigh600,
                ),
                const Gap(AppDimens.space20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () async {
                        var file =
                            await ImageHandler().pickImage(ImageSource.camera);
                        if (file != null) {
                          NavigationServices().pop(File(file.path));
                        }
                      },
                      child: Column(
                        children: [
                           RoundIcon(
                            iconPath: AppAssets.image,
                            iconPadding: const EdgeInsets.all(8),
                            radius: 34,
                            iconSize: 35,
                             bgopacity: .2,
                          ),
                          const Gap(8),
                          Text(
                            'Click Photo',
                            style: context.md14.weigh400.withBlack,
                          ),
                        ],
                      ),
                    ),
                    Gap(context.h(50)),
                    GestureDetector(
                      onTap: () async {
                        var file =
                            await ImageHandler().pickImage(ImageSource.gallery);
                        if (file != null) {
                          NavigationServices().pop(File(file.path));
                        }
                      },
                      child: Column(
                        children: [
                           RoundIcon(
                            iconPath: AppAssets.image,
                            radius: 34,
                            iconSize: 35,
                             bgopacity: .2,
                          ),
                          const Gap(8),
                          Text(
                            'Upload Photo',
                            style: context.md14.weigh400.withBlack,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
    if (result is File) {
      return result;
    }
    return null;
  }

  _openFileManager() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['gif'],
    );
  }

  Future<DateTime?> showDatePickerDialog({DateTime? selectedDate}) async {
    selectedDate ??= DateTime.now();
    var controller = PageController();
    var currenDate = ValueNotifier<DateTime>(selectedDate);
    ValueNotifier<bool> headerClick = ValueNotifier(false);
    var diffrence = DateTime.now().difference(DateTime(1910)).inDays ~/ 365;
    print(diffrence);
    var result = await showModalBottomSheet(
      context: NavigationServices().getNavigationContext(),
      isScrollControlled: true,
      useSafeArea: true,
      useRootNavigator: false,
      shape: const CustomSquricleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(15),
          topRight: Radius.circular(15),
        ),
      ),
      backgroundColor: Colors.transparent,
      clipBehavior: Clip.hardEdge,
      builder: (context) {
        return Scaffold(
          backgroundColor: AppColors.transparent,
          resizeToAvoidBottomInset: true,
          body: GestureDetector(
            onTap: () {
              NavigationServices().pop();
            },
            child: const ColoredBox(
              color: Colors.transparent,
              child: SizedBox.expand(),
            ),
          ),
          bottomSheet: Container(
            padding:
                const EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Squircle(
                  height: 4,
                  width: context.h(100),
                  backgroundColor: AppColors.greyD9Color,
                ),
                const Gap(10),
                ValueListenableBuilder(
                  valueListenable: headerClick,
                  builder: (context, value, child) => value
                      ? SizedBox(
                          height: MediaQuery.of(context).size.width,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              AppIconButton.back(
                                onPressed: () {
                                  headerClick.value = false;
                                },
                              ),
                              Expanded(
                                child: GridView.builder(
                                  gridDelegate:
                                      const SliverGridDelegateWithFixedCrossAxisCount(
                                          crossAxisCount: 4,
                                          childAspectRatio: 16 / 9),
                                  shrinkWrap: true,
                                  itemCount: diffrence,
                                  itemBuilder: (context, index) {
                                    var date =
                                        DateTime((DateTime.now().year - index));
                                    return ActionChip(
                                      onPressed: () {
                                        currenDate.value = date;
                                        headerClick.value = false;
                                      },
                                      backgroundColor: currenDate.value.year ==
                                              date.year
                                          ? AppColors.primary.withOpacity(.5)
                                          : AppColors.white,
                                      padding: const EdgeInsets.all(5),
                                      shape: ContinuousRectangleBorder(
                                          side: const BorderSide(
                                              color: AppColors.primary),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      label: Text(
                                        '${date.year}',
                                        style: context.s12.withBlack,
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ],
                          ),
                        )
                      : ValueListenableBuilder(
                          valueListenable: currenDate,
                          builder: (context, date, child) => TableCalendar(
                            onCalendarCreated: (pageController) {
                              controller = pageController;
                            },
                            sixWeekMonthsEnforced: true,
                            pageJumpingEnabled: true,
                            firstDay: DateTime(1910),
                            currentDay: date,
                            focusedDay: date,
                            calendarBuilders: CalendarBuilders(
                              headerTitleBuilder: (context, day) {
                                var date = DateFormat('MMMM yyyy').format(day);
                                return InkWell(
                                  onTap: () {
                                    headerClick.value = !headerClick.value;
                                  },
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: Text(
                                          date,
                                          style: context.s12.weigh500.copyWith(
                                              decoration:
                                                  TextDecoration.underline),
                                        ),
                                      ),
                                      IconButton(
                                        constraints: const BoxConstraints(),
                                        padding: EdgeInsets.zero,
                                        onPressed: () {
                                          controller.previousPage(
                                              duration: const Duration(
                                                  milliseconds: 300),
                                              curve: Curves.easeOut);
                                        },
                                        icon: const Icon(
                                          Icons.chevron_left,
                                        ),
                                      ),
                                      Gap(context.h(5)),
                                      IconButton(
                                        constraints: const BoxConstraints(),
                                        padding: EdgeInsets.zero,
                                        onPressed: () {
                                          controller.nextPage(
                                              duration: const Duration(
                                                  milliseconds: 300),
                                              curve: Curves.easeIn);
                                        },
                                        icon: const Icon(
                                          Icons.chevron_right,
                                        ),
                                      )
                                    ],
                                  ),
                                );
                              },
                            ),
                            calendarStyle: const CalendarStyle(
                              todayDecoration: BoxDecoration(
                                  color: AppColors.primary,
                                  shape: BoxShape.circle),
                              selectedDecoration: BoxDecoration(
                                  color: AppColors.primary,
                                  shape: BoxShape.circle),
                            ),
                            onPageChanged: (focusedDay) {
                              currenDate.value = focusedDay;
                            },
                            lastDay: DateTime.now(),
                            headerStyle: const HeaderStyle(
                              leftChevronVisible: false,
                              formatButtonVisible: false,
                              rightChevronVisible: false,
                            ),
                            onDaySelected: (selectedDay, focusedDay) {
                              NavigationServices().pop(selectedDay);
                            },
                          ),
                        ),
                ),
              ],
            ),
          ),
        );
      },
    );
    if (result is DateTime) {
      return result;
    }
    return null;
  }
}
