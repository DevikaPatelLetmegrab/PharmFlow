import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:pharm_flow/core/config/app_dimension.dart';
import 'package:pharm_flow/core/widget/common_app_bar.dart';
import 'package:pharm_flow/core/widget/rich_text.dart';

class PrivacyPolicyPage extends StatefulWidget {
  const PrivacyPolicyPage({super.key});

  @override
  State<PrivacyPolicyPage> createState() => _PrivacyPolicyPageState();
}

class _PrivacyPolicyPageState extends State<PrivacyPolicyPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CommonAppBar(
        title: 'Privacy Policy',
      ),
      body: Padding(
        padding: EdgeInsets.all(AppDimens.space16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              CommonRichText(
                  title: '1. Information Collection:',
                  subtitle:
                      ' Describes the types of personal information collected from patients, such as name, address, date of birth, contact information, medical history, and insurance information.'),
              Gap(AppDimens.space20),
              CommonRichText(
                  title: '2. Purpose of Information:',
                  subtitle:
                      ' Specifies the purposes for which the pharmacy collects and uses patient information, such as processing prescriptions, providing patient care services, billing insurance companies, and communicating with patients about their medications.'),
              Gap(AppDimens.space20),
              CommonRichText(
                  title: '3. Information Sharing:',
                  subtitle:
                      ' Explains under what circumstances the pharmacy may share patient information with third parties, such as healthcare providers, insurance companies, prescription drug monitoring programs, and government agencies, and the purposes for such sharing.'),
              Gap(AppDimens.space20),
              CommonRichText(
                  title: '4. Security Measures:',
                  subtitle:
                      ' Outlines the security measures implemented by the pharmacy to protect patient information from unauthorized access, disclosure, alteration, or destruction, such as encryption, password protection, firewalls, and secure data storage systems.'),
              Gap(AppDimens.space20),
              CommonRichText(
                  title: '5. Data Retention:',
                  subtitle:
                      " Specifies the pharmacy's policies for retaining patient information, including the duration for which information is retained and the procedures for securely disposing of or de-identifying information when it is no longer needed."),
              Gap(AppDimens.space20),
            ],
          ),
        ),
      ),
    );
  }
}
