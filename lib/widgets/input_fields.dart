import 'package:e_commerce/constants/values.dart';
import 'package:flutter/material.dart';

class CustomTextFiled extends StatelessWidget {
  final String placeholder;
  final bool isPassword;

  const CustomTextFiled({
    super.key,
    required this.placeholder,
    required this.isPassword,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 25),
      child: Container(
        width: 320,
        decoration: BoxDecoration(
          color: const Color(0xFFF2F2F2),
          borderRadius: BorderRadius.circular(Values.inputs_br),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: TextField(
            obscureText: isPassword,
            decoration: InputDecoration(
              enabledBorder: InputBorder.none,
              hintText: placeholder,
              hintStyle: const TextStyle(
                color: Color(0xFFB6B7B7),
                fontSize: 14,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
