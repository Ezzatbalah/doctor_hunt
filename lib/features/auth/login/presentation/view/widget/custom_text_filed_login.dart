import 'package:doctor_hunt/features/auth/login/presentation/view/widget/Login_Box.dart';

import 'package:flutter/material.dart';

class CustomTextFiledLogin extends StatelessWidget {
  const CustomTextFiledLogin({
    super.key,
    required GlobalKey<FormState> formKey,
    required TextEditingController emailController,
    required TextEditingController passwordController,
    required this.screenHight,
  }) : _formKey = formKey,

       _emailController = emailController,
       _passwordController = passwordController;

  final GlobalKey<FormState> _formKey;

  final TextEditingController _emailController;
  final TextEditingController _passwordController;
  final double screenHight;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            controller: _emailController,
            decoration: InputDecoration(
              labelText: "Email",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide(color: Colors.grey),
              ),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Email is required";
              }
              if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
                return "Enter a valid email";
              }
              return null;
            },
          ),
          const SizedBox(height: 10),
          TextFormField(
            controller: _passwordController,
            obscureText: true,
            decoration: InputDecoration(
              labelText: "Password",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide(color: Colors.grey),
              ),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Password is required";
              }
              if (value.length < 6) {
                return "Password must be at least 6 characters";
              }
              return null;
            },
          ),
          const SizedBox(height: 30),

          LoginBox(screenHight: screenHight, formKey: _formKey),
        ],
      ),
    );
  }
}
