import 'package:doctor_hunt/core/utils/styles.dart';
import 'package:flutter/material.dart';

class AgreeTerms extends StatefulWidget {
  const AgreeTerms({super.key});

  @override
  State<AgreeTerms> createState() => _AgreeTermsState();
}

class _AgreeTermsState extends State<AgreeTerms> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: _isChecked,
          onChanged: (value) {
            setState(() {
              _isChecked = value ?? false;
            });
          },
          shape: const CircleBorder(),
          side: BorderSide.none,
          checkColor: Colors.white,
          fillColor: WidgetStateProperty.resolveWith<Color>((states) {
            if (states.contains(WidgetState.selected)) {
              return Colors.green;
            }
            return Colors.grey;
          }),
        ),
        Expanded(
          child: RichText(
            text: TextSpan(
              children: [
                const TextSpan(
                  text: "I agree with the Terms of Service & Privacy Policy",
                  style: Styles.textStyle14,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
