import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:pharm_flow/core/config/app_dimension.dart';
import 'package:pharm_flow/core/widget/common_app_bar.dart';
import 'package:pharm_flow/core/widget/rich_text.dart';

class MedicationPolicyPage extends StatefulWidget {
  const MedicationPolicyPage({super.key});

  @override
  State<MedicationPolicyPage> createState() => _MedicationPolicyPageState();
}

class _MedicationPolicyPageState extends State<MedicationPolicyPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CommonAppBar(
        title: 'Medication Dispensing Policy',
      ),
      body: Padding(
        padding: EdgeInsets.all(AppDimens.space16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              CommonRichText(
                  title: '1. Prescription Verification:',
                  subtitle:
                      ' Describes the process for verifying the accuracy and validity of prescriptions, including checking for proper authorization, patient information, medication name, dosage, and directions for use.'),
              Gap(AppDimens.space20),
              CommonRichText(
                  title: '2. Medication Selection:',
                  subtitle:
                      " Outlines the procedures for selecting the appropriate medication from the pharmacy's inventory based on the prescription and patient's needs, including checking for drug interactions or allergies."),
              Gap(AppDimens.space20),
              CommonRichText(
                  title: '3. Medication Labeling:',
                  subtitle:
                      ' Specifies the requirements for labeling medication containers, including patient name, medication name, dosage instructions, expiration date, and any auxiliary labels or warnings.'),
              Gap(AppDimens.space20),
              CommonRichText(
                  title: '4. Dosage Preparation:',
                  subtitle:
                      ' Details the steps involved in preparing the prescribed dosage of medication, such as counting pills, measuring liquid medications, or compounding customized formulations.'),
              Gap(AppDimens.space20),
              CommonRichText(
                  title: '5. Double-Checking Process:',
                  subtitle:
                      ' Describes the protocol for double-checking medication dispensing by a second qualified pharmacy staff member to ensure accuracy and minimize errors'),
              Gap(AppDimens.space20),
            ],
          ),
        ),
      ),
    );
  }
}
