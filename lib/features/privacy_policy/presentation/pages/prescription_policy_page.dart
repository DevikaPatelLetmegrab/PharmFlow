import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:pharm_flow/core/config/app_dimension.dart';
import 'package:pharm_flow/core/widget/common_app_bar.dart';
import 'package:pharm_flow/core/widget/rich_text.dart';

class PrescriptionPolicyPage extends StatefulWidget {
  const PrescriptionPolicyPage({super.key});

  @override
  State<PrescriptionPolicyPage> createState() => _PrescriptionPolicyPageState();
}

class _PrescriptionPolicyPageState extends State<PrescriptionPolicyPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CommonAppBar(
        title: 'Prescription Policy',
      ),
      body: Padding(
        padding: EdgeInsets.all(AppDimens.space16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CommonRichText(
                title: '1. Prescription Acceptance:',
                subtitle:
                    ' Describes the types of prescriptions the pharmacy accepts, such as electronic prescriptions, faxed prescriptions, or written prescriptions brought in by patients.',
              ),
              Gap(AppDimens.space20),
              CommonRichText(
                title: '2. Prescriber Verification:',
                subtitle:
                    ' Specifies the procedures for verifying the validity of prescriptions and confirming the identity and credentials of prescribers.',
              ),
              Gap(AppDimens.space20),
              CommonRichText(
                  title: '3. Patient Verification:',
                  subtitle:
                      ' Outlines how patients identities are verified to ensure that prescriptions are dispensed to the correct individuals.'),
              Gap(AppDimens.space20),
              CommonRichText(
                  title: '4. Prescription Filling Process:',
                  subtitle:
                      ' Details the steps involved in filling a prescription, including medication selection, counting or measuring the medication, labeling, and final verification by a pharmacist.'),
              Gap(AppDimens.space20),
              CommonRichText(
                  title: '5. Prescription Labeling:',
                  subtitle:
                      ' Provides guidelines for labeling prescription containers, including required information such as patient name, medication name, dosage instructions, and expiration date.'),
              Gap(AppDimens.space20),
              CommonRichText(
                  title: '6. Prescription Storage:',
                  subtitle:
                      ' Addresses how prescriptions are stored within the pharmacy to ensure security, privacy, and compliance with regulatory requirements.'),
              Gap(AppDimens.space20),
              CommonRichText(
                  title: '7. Prescription Refills:',
                  subtitle:
                      ' Specifies how prescription refills are handled, including any limits on the number of refills allowed and procedures for obtaining refills.'),
              Gap(AppDimens.space20),
              CommonRichText(
                  title: '8. Prescription Transfers:',
                  subtitle:
                      ' Outlines the procedures for transferring prescriptions from one pharmacy to another, including patient consent requirements and communication between pharmacies'),
              Gap(AppDimens.space20),
              CommonRichText(
                  title: '9. Prescription Documentation:',
                  subtitle:
                      ' Describes the documentation requirements for maintaining records of filled prescriptions, including electronic records, paper records, and any reporting obligations.'),
              Gap(AppDimens.space20),
              CommonRichText(
                  title: '10. Prescription Disposal:',
                  subtitle:
                      ' Provides guidelines for the proper disposal of expired or unused medications in accordance with legal and environmental regulations.')
            ],
          ),
        ),
      ),
    );
  }
}
