import 'package:flutter/material.dart';

class FaqServicesTabviewItem extends StatefulWidget {
  const FaqServicesTabviewItem({super.key});

  @override
  State<FaqServicesTabviewItem> createState() => _FaqServicesTabviewItemState();
}

class _FaqServicesTabviewItemState extends State<FaqServicesTabviewItem> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [Text('Services')],
      ),
    );
  }
}
