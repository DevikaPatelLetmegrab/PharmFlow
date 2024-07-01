import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NavigationServices {
  static final NavigationServices _instance = NavigationServices._internal();
  GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  NavigationServices._internal();

  factory NavigationServices() => _instance;

  Future<dynamic> pushName(route) {
    return navigatorKey.currentContext!.pushNamed(route);
  }

  pop() {
    return navigatorKey.currentContext!.pop();
  }

  pushRepleshmentName(name) {
    return navigatorKey.currentContext!.pushReplacementNamed(name);
  }


  BuildContext getNavigationContext() {
    return navigatorKey.currentState!.context;
  }
}
