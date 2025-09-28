// ignore: file_names
import 'package:doctor_hunt/core/utils/app_string.dart';
import 'package:doctor_hunt/core/utils/routes.dart';
import 'package:doctor_hunt/core/utils/styles.dart';
import 'package:doctor_hunt/features/onBoarding/presentation/view/widget/skip_button.dart';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class TherdOnboredingScreen extends StatelessWidget {
  const TherdOnboredingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenHight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Positioned.fill(
              child: Image.asset(
                'assets/images/02_Onboarding screen-01.jpg',
                fit: BoxFit.cover,
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 80),
                  Align(
                    alignment: Alignment.topLeft.add(Alignment(0.5, 0)),
                    child: Image.asset(
                      'assets/images/Ellipse 155 (4).png',
                      width: 270,
                      height: 270,
                    ),
                  ),
                  SizedBox(height: 90),
                  Center(
                    child: Text(
                      AppString.textBord3,
                      style: Styles.textStyle28,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Text(
                    AppString.textBordHint,
                    style: Styles.textStyle14,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 40),
                  GestureDetector(
                    onTap: () {
                      GoRouter.of(context).push(AppRouter.kSingView);
                    },
                    child: Container(
                      height: screenHight * 0.09,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(20),
                      ),

                      child: Center(
                        child: Text(
                          AppString.button,
                          style: Styles.textStyle18,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  CustomSkip(),
                  SizedBox(height: 40),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
