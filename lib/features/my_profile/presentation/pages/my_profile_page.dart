import 'package:flutter/material.dart';
import 'package:pharm_flow/core/widget/common_app_bar.dart';

class MyProfilePage extends StatelessWidget {
  const MyProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(
        title: 'My Profile',
      ),
    );
  }
}
