import 'package:doctor_hunt/core/utils/colors.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String? hintText;
  final Color? borderColor;
  final Widget? suffixIcon;
  final TextInputType? keyboardType;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final double? width;
  final int? maxLines;
  final bool? isPassword;
  const CustomTextField({
    super.key,
    this.hintText,
    this.borderColor,
    this.suffixIcon,
    this.width,
    this.isPassword,
    this.controller,
    this.validator,
    this.maxLines,
    this.keyboardType,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? double.infinity,
      child: TextFormField(
        keyboardType: keyboardType ?? TextInputType.text,
        maxLines: maxLines ?? 1,
        controller: controller,
        validator: validator,
        obscureText: isPassword ?? false,
        cursorColor: Colors.green,
        style: TextStyle(
          color: Colors.black,
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide.none,
          ),
          hintText: hintText ?? "",
          contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 18),
          filled: true,
          fillColor: kPrimaryColor,
          suffixIcon: suffixIcon,
          prefixIcon: Icon(Icons.search, color: Colors.grey),
        ),
      ),
    );
  }
}
