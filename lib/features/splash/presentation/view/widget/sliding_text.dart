import 'package:doctor_hunt/core/utils/app_string.dart';
import 'package:doctor_hunt/core/utils/styles.dart';
import 'package:flutter/material.dart';

class SlidingText extends StatelessWidget {
  const SlidingText({super.key, required this.slidingAnimation});

  final Animation<Offset> slidingAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: slidingAnimation,
      builder: (context, _) {
        return SlideTransition(
          position: slidingAnimation,
          child: Text(
            AppString.logoName,
            style: Styles.textStyle25.copyWith(color: Colors.black),
            textAlign: TextAlign.center,
          ),
        );
      },
    );
  }
}
