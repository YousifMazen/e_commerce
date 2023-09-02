import 'package:e_commerce/constants/values.dart';
import 'package:flutter/material.dart';

class TitleFont extends StatelessWidget {
  final String text;

  const TitleFont({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: const TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.w700,
        color: Color(0xFF4A4B4D),
      ),
    );
  }
}

class SubTitleFont extends StatelessWidget {
  final String text;

  const SubTitleFont({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: const TextStyle(
        fontSize: 13,
        fontWeight: FontWeight.w500,
        color: Color(0xFF7C7D7E),
        height: 1.4,
      ),
    );
  }
}
