import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NavigationServices {
  static final NavigationServices _instance = NavigationServices._internal();
  GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  NavigationServices._internal();

  factory NavigationServices() => _instance;

  Future<dynamic> pushName(route, {Object? extra}) {
    return navigatorKey.currentContext!.pushNamed(route, extra: extra);
  }

  pop<T>([T? value]) {
    return navigatorKey.currentContext!.pop(value);
  }

  // pushRepleshmentName(name) {
  //   return navigatorKey.currentContext!.pushReplacementNamed(name);
  // }

  BuildContext getNavigationContext() {
    return navigatorKey.currentContext!;
  }

  pushRemoveUntil(name) {
    return navigatorKey.currentContext!.go(name);
  }
}
