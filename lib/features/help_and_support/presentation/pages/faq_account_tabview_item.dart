import 'package:flutter/material.dart';

class FaqAccountTabviewItem extends StatefulWidget {
  const FaqAccountTabviewItem({super.key});

  @override
  State<FaqAccountTabviewItem> createState() => _FaqAccountTabviewItemState();
}

class _FaqAccountTabviewItemState extends State<FaqAccountTabviewItem> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [Text('Account')],
      ),
    );
  }
}
