import 'package:flutter/foundation.dart';

@immutable
class DrawerModel {
  final String assetImage;
  final int index;
  final String title;
  final String route;

  final expanded = ValueNotifier<bool>(false);

  DrawerModel({
    required this.assetImage,
    required this.index,
    required this.title,
    required this.route,
  });
}
