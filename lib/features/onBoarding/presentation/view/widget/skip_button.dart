import 'package:doctor_hunt/core/utils/routes.dart';
import 'package:doctor_hunt/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomSkip extends StatelessWidget {
  const CustomSkip({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kSingView);
      },
      child: Center(child: Text('Skip', style: Styles.textStyle14)),
    );
  }
}
