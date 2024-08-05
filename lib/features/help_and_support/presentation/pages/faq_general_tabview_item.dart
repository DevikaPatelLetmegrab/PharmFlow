import 'package:flutter/material.dart';

class FaqGeneralTabviewItem extends StatefulWidget {
  const FaqGeneralTabviewItem({super.key});

  @override
  State<FaqGeneralTabviewItem> createState() => _FaqGeneralTabviewItemState();
}

class _FaqGeneralTabviewItemState extends State<FaqGeneralTabviewItem> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [Text('General')],
      ),
    );
  }
}
