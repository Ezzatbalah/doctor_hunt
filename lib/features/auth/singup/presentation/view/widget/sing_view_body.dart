import 'package:doctor_hunt/core/utils/app_string.dart';

import 'package:doctor_hunt/core/utils/styles.dart';
import 'package:doctor_hunt/features/auth/singup/presentation/view/widget/Box_media.dart';

import 'package:doctor_hunt/features/auth/singup/presentation/view/widget/custom_text_filed.dart';

import 'package:flutter/material.dart';

class SingViewBody extends StatefulWidget {
  const SingViewBody({super.key});

  @override
  State<SingViewBody> createState() => _SingViewBodyState();
}

class _SingViewBodyState extends State<SingViewBody> {
  final _formKey = GlobalKey<FormState>();

  final _nameController = TextEditingController();
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
                    AppString.singText1,
                    style: Styles.textStyle25,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 15),
                  Text(
                    AppString.singText2,
                    style: Styles.textStyle14,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 60),
                  const CustomBoxMedia(),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 30,
                    ),
                    child: CustomTextFiled(
                      formKey: _formKey,
                      nameController: _nameController,
                      emailController: _emailController,
                      passwordController: _passwordController,
                      screenHight: screenHight,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      "Have an account? Log in",
                      style: Styles.textStyle14.copyWith(
                        color: Color(0xff0EBE7F),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
