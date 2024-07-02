import 'package:flutter/material.dart';

import 'package:pharm_flow/core/utils/app_size.dart';


class CircleInfoImage extends StatelessWidget {
  final String assetImage;

  const CircleInfoImage({required this.assetImage, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.w(65),
      width: context.w(65),
      padding: const EdgeInsets.all(10),
      decoration:const BoxDecoration(
        shape: BoxShape.circle,
      ),
      child: Center(
        child: Center(
          child: Image.asset(assetImage),
        ),
      ),
    );
  }
}
