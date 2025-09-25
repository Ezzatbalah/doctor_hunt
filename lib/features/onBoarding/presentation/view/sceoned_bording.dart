// ignore: file_names
import 'package:doctor_hunt/core/utils/app_string.dart';
import 'package:doctor_hunt/core/utils/routes.dart';

import 'package:doctor_hunt/core/utils/styles.dart';

import 'package:doctor_hunt/features/onBoarding/presentation/view/widget/skip_button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SceonedBording extends StatelessWidget {
  const SceonedBording({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenHight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Positioned.fill(
              child: Image.asset(
                'assets/images/03_Onboarding screen-02.jpg',
                fit: BoxFit.cover,
              ),
            ),

            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(height: 80),
                Align(
                  alignment: Alignment.topLeft.add(Alignment(0.5, 0)),
                  child: Image.asset(
                    'assets/images/Ellipse 154 (2).png',
                    width: 270,
                    height: 270,
                  ),
                ),
                SizedBox(height: 90),
                Center(
                  child: Text(AppString.textBord1, style: Styles.textStyle28),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 20,
                      right: 45,
                      top: 20,
                    ),
                    child: Text(AppString.textBord2, style: Styles.textStyle14),
                  ),
                ),
                SizedBox(height: 40),
                GestureDetector(
                  onTap: () {
                    GoRouter.of(context).push(AppRouter.kOnBoardingScreen3);
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(left: 30, right: 30),
                    child: Container(
                      height: screenHight * 0.09,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(20),
                      ),

                      child: Center(
                        child: Text(
                          AppString.Button,
                          style: Styles.textStyle18,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                CustomSkip(),
                SizedBox(height: 40),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
