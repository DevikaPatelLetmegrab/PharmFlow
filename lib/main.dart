import 'package:flutter/material.dart';
import 'package:pharm_flow/core/routes/routes_utils.dart';
import 'package:pharm_flow/core/utils/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var router = RoutesUtils();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router.goRoute,
      debugShowCheckedModeBanner: false,
      title: 'Pharm Flow',
      themeMode: ThemeMode.light,
      theme: AppThemeData.theme,
    );
  }
}
