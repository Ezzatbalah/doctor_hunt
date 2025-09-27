import 'package:doctor_hunt/core/utils/styles.dart';
import 'package:doctor_hunt/features/auth/login/presentation/view/widget/enter_code_sheet.dart';
import 'package:flutter/material.dart';

class ForgotPasswordEmailSheet extends StatelessWidget {
  const ForgotPasswordEmailSheet({super.key});

  @override
  Widget build(BuildContext context) {
    final emailController = TextEditingController();

    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Forgot password",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          const Text(
            "Enter your email for the verification process,\nwe will send 4 digits code to your email.",
            style: TextStyle(fontSize: 14, color: Colors.grey),
          ),
          const SizedBox(height: 20),
          TextField(
            controller: emailController,
            decoration: InputDecoration(
              labelText: "Email",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ),
          const SizedBox(height: 20),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xff0EBE7F),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              onPressed: () {
                Navigator.pop(context); // يقفل الـ BottomSheet
                showModalBottomSheet(
                  context: context,
                  isScrollControlled: true,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(25),
                    ),
                  ),
                  builder: (_) => const EnterCodeSheet(),
                );
              },
              child: const Text("Continue", style: Styles.textStyle18),
            ),
          ),
        ],
      ),
    );
  }
}
