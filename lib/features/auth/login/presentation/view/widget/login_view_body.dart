import 'package:doctor_hunt/core/utils/app_string.dart';

import 'package:doctor_hunt/core/utils/styles.dart';
import 'package:doctor_hunt/features/auth/login/presentation/view/widget/custom_text_filed_login.dart';
import 'package:doctor_hunt/features/auth/login/presentation/view/widget/forogotTap.dart';
import 'package:doctor_hunt/features/auth/singup/presentation/view/widget/Box_media.dart';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoginViewBody extends StatefulWidget {
  const LoginViewBody({super.key});

  @override
  State<LoginViewBody> createState() => _SingViewBodyState();
}

class _SingViewBodyState extends State<LoginViewBody> {
  final _formKey = GlobalKey<FormState>();

  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final double screenHight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Positioned.fill(
              child: Image.asset("assets/images/sing.png", fit: BoxFit.cover),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 160),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    AppString.loginText1,
                    style: Styles.textStyle25,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 15),
                  Text(
                    AppString.loginText2,
                    style: Styles.textStyle14,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 60),
                  const CustomBoxMedia(),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 20,
                    ),
                    child: CustomTextFiledLogin(
                      formKey: _formKey,

                      emailController: _emailController,
                      passwordController: _passwordController,
                      screenHight: screenHight,
                    ),
                  ),

                  GestureDetector(
                    onTap: () {
                      showModalBottomSheet(
                        context: context,
                        isScrollControlled: true,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.vertical(
                            top: Radius.circular(25),
                          ),
                        ),
                        builder: (_) => const ForgotPasswordEmailSheet(),
                      );
                    },
                    child: Text(
                      "Forgot password",
                      style: Styles.textStyle14.copyWith(
                        color: const Color(0xff0EBE7F),
                      ),
                    ),
                  ),

                  SizedBox(height: 90),
                  GestureDetector(
                    onTap: () {
                      GoRouter.of(context).pop();
                    },
                    child: Text(
                      "Don’t have an account? Join us",
                      style: Styles.textStyle14.copyWith(
                        color: Color(0xff0EBE7F),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
