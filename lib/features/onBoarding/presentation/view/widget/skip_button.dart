import 'package:doctor_hunt/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomSkip extends StatelessWidget {
  const CustomSkip({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Center(child: Text('Skip', style: Styles.textStyle14)),
    );
  }
}
