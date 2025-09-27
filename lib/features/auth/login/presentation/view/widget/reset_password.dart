import 'package:doctor_hunt/core/utils/styles.dart';
import 'package:flutter/material.dart';

class ResetPasswordSheet extends StatelessWidget {
  const ResetPasswordSheet({super.key});

  @override
  Widget build(BuildContext context) {
    final passController = TextEditingController();
    final rePassController = TextEditingController();

    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Reset Password",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          const Text(
            "Set the new password for your account so you can login and access all the features.",
            style: TextStyle(fontSize: 14, color: Colors.grey),
          ),
          const SizedBox(height: 20),
          TextField(
            controller: passController,
            obscureText: true,
            decoration: InputDecoration(
              labelText: "New Password",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ),
          const SizedBox(height: 20),
          TextField(
            controller: rePassController,
            obscureText: true,
            decoration: InputDecoration(
              labelText: "Re-enter Password",
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
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text("Password updated successfully!"),
                  ),
                );
              },
              child: const Text("Update Password", style: Styles.textStyle18),
            ),
          ),
        ],
      ),
    );
  }
}
