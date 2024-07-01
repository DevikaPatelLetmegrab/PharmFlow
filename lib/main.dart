import 'package:flutter/material.dart';
import 'package:pharm_flow/core/utils/app_theme.dart';
import 'package:pharm_flow/feature/Profile/presentation/pages/profile_screen.dart';

import 'feature/Registration/presentation/pages/registration_screen.dart';
import 'feature/SignIn/presentation/pages/sign_in_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router();

  }
}
