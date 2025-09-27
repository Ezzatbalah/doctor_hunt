import 'package:doctor_hunt/core/utils/styles.dart';
import 'package:doctor_hunt/features/auth/login/presentation/view/widget/reset_password.dart';
import 'package:flutter/material.dart';

class EnterCodeSheet extends StatelessWidget {
  const EnterCodeSheet({super.key});

  @override
  Widget build(BuildContext context) {
    final codeController = TextEditingController();

    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            "Enter 4 Digits Code",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          const Text(
            "Enter the 4 digits code that you received on your email.",
            style: TextStyle(fontSize: 14, color: Colors.grey),
          ),
          const SizedBox(height: 20),
          TextField(
            controller: codeController,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              labelText: "Code",
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
                Navigator.pop(context);
                showModalBottomSheet(
                  context: context,
                  isScrollControlled: true,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(25),
                    ),
                  ),
                  builder: (_) => const ResetPasswordSheet(),
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
