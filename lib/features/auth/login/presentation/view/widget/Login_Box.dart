import 'package:doctor_hunt/core/utils/routes.dart';
import 'package:doctor_hunt/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoginBox extends StatelessWidget {
  const LoginBox({super.key, required this.screenHight, required this.formKey});

  final double screenHight;
  final GlobalKey<FormState> formKey;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (formKey.currentState!.validate()) {
          GoRouter.of(context).push(AppRouter.kHomeView);
        } else {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text("Please fill all required fields")),
          );
        }
      },
      child: Container(
        height: screenHight * 0.09,
        decoration: BoxDecoration(
          color: Color(0xff0EBE7F),
          borderRadius: BorderRadius.circular(20),
        ),

        child: Center(child: Text("Login", style: Styles.textStyle18)),
      ),
    );
  }
}
