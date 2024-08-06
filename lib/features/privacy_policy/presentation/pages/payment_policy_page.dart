import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:pharm_flow/core/config/app_dimension.dart';
import 'package:pharm_flow/core/widget/common_app_bar.dart';
import 'package:pharm_flow/core/widget/rich_text.dart';

class PaymentPolicyPage extends StatefulWidget {
  const PaymentPolicyPage({super.key});

  @override
  State<PaymentPolicyPage> createState() => _PaymentPolicyPageState();
}

class _PaymentPolicyPageState extends State<PaymentPolicyPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CommonAppBar(
        title: 'Payment Policy',
      ),
      body: Padding(
        padding: EdgeInsets.all(AppDimens.space16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              CommonRichText(
                  title: '1. Accepted Payment Methods:',
                  subtitle:
                      ' Specifies the types of payment methods accepted through the app, such as credit cards, debit cards, mobile wallets (e.g., Apple Pay, Google Pay), electronic bank transfers, or in-app payment options.'),
              Gap(AppDimens.space20),
              CommonRichText(
                  title: '2. Payment Authorization:',
                  subtitle:
                      " Describes the process for authorizing payment transactions, including any security measures implemented to prevent fraudulent transactions and protect users' financial information."),
              Gap(AppDimens.space20),
              CommonRichText(
                  title: '3. Payment Processing Fees:',
                  subtitle:
                      ' Discloses any fees or surcharges associated with payment transactions made through the app, such as transaction fees charged by payment processors or additional fees for expedited processing or special services.'),
              Gap(AppDimens.space20),
              CommonRichText(
                  title: '4. Currency and Pricing:',
                  subtitle:
                      ' States the currency accepted for payment transactions and clarifies how prices for medications and pharmacy services are determined and displayed within the app, including any applicable taxes or surcharges.'),
              Gap(AppDimens.space20),
              CommonRichText(
                  title: '5. Payment Terms and Conditions:',
                  subtitle:
                      ' Outlines the terms and conditions governing payment transactions, including payment deadlines, refund policies, cancellation policies, and any penalties for late or failed payments.'),
              Gap(AppDimens.space20),
              CommonRichText(
                  title: '6. Payment Security:',
                  subtitle:
                      " Addresses the security measures implemented to protect users' payment information and prevent unauthorized access, such as encryption, tokenization, secure sockets layer (SSL) technology, and compliance with Payment Card Industry Data Security Standards (PCI DSS)."),
              Gap(AppDimens.space20),
            ],
          ),
        ),
      ),
    );
  }
}
