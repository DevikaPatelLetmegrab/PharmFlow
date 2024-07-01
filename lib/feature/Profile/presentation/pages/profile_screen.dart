import 'package:flutter/material.dart';
import 'package:pharm_flow/core/config/app_dimension.dart';
import 'package:pharm_flow/feature/Profile/presentation/pages/allergy_screen.dart';
import 'package:pharm_flow/feature/Profile/presentation/pages/avtar_screen.dart';
import 'package:pharm_flow/feature/Profile/presentation/pages/gender_screen.dart';
import 'package:pharm_flow/feature/Profile/presentation/pages/medical_condition_list.dart';
import 'package:pharm_flow/feature/Profile/presentation/pages/medical_condition_screen.dart';
import 'package:pharm_flow/feature/Profile/presentation/pages/primary_goal_screen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final PageController controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(AppDimens.space16),
        child: PageView(
          controller: controller,
          children: [
            PrimaryGoalScreen(
              controller: controller,
            ),
            GenderScreen(controller: controller),
            MedicalConditionScreen(controller: controller),
            MedicalConditionListScreen(
              controller: controller,
            ),
            AllergyScreen(controller: controller),
            AvtarScreen(controller: controller)
          ],
        ),
      ),
    );
  }
}
