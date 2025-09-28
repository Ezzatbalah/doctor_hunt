import 'package:doctor_hunt/core/utils/app_string.dart';
import 'package:doctor_hunt/core/utils/colors.dart';
import 'package:doctor_hunt/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomAppBarContainer extends StatelessWidget {
  const CustomAppBarContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 155,
      decoration: BoxDecoration(
        color: Color(0xff0EBE7E),
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(25),
          bottomRight: Radius.circular(25),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(height: 35),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      AppString.appBarTex1,
                      style: Styles.textStyle18.copyWith(
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    SizedBox(height: 3),
                    Text(
                      AppString.appBarTex2,
                      style: Styles.textStyle25.copyWith(color: kPrimaryColor),
                    ),
                  ],
                ),
                SizedBox(width: 70),
                CircleAvatar(
                  radius: 28,
                  backgroundImage: AssetImage("assets/images/Ellipse 26.png"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
