import 'package:flutter/material.dart';


extension CustomSize on BuildContext {
  /// Dynamic Height based on screen pixel ration

  double h(num height) {
    return height.toDouble();
  }

  // double h(num height) => height * (MediaQuery.of(this).size.height / 550);

  /// Dynamic Width based on screen pixel ration
  double w(num width) => isTablet ? width * 1.2 : width.toDouble();

  // double w(num width) => width * (MediaQuery.of(this).size.width / 360);
  bool get isTablet => MediaQuery.of(this).size.width > 500;

  double get getHeight => MediaQuery.of(this).size.height;
  double get getWidth => MediaQuery.of(this).size.width;

}