import 'package:doctor_hunt/core/utils/routes.dart';
import 'package:doctor_hunt/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SingUpBox extends StatelessWidget {
  const SingUpBox({super.key, required this.screenHight});

  final double screenHight;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kHomeView);
      },
      child: Container(
        height: screenHight * 0.09,
        decoration: BoxDecoration(
          color: Color(0xff0EBE7F),
          borderRadius: BorderRadius.circular(20),
        ),

        child: Center(child: Text("Sing Up", style: Styles.textStyle18)),
      ),
    );
  }
}
