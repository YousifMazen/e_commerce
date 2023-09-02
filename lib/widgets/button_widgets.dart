import 'package:e_commerce/constants/values.dart';
import 'package:flutter/material.dart';

class PrimaryBtn extends StatelessWidget {
  final String text;
  void Function() onPressed;
  PrimaryBtn({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 320,
      height: 50,
      margin: const EdgeInsets.only(bottom: 18),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(Values.inputs_br),
          ),
        ),
        child: Text(
          text,
          style: const TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}

class SecondaryBtn extends StatelessWidget {
  final String text;
  void Function() onPressed;

  SecondaryBtn({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 320,
      height: 50,
      margin: const EdgeInsets.only(bottom: 30),
      child: OutlinedButton(
        onPressed: onPressed,
        style: OutlinedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(Values.inputs_br),
          ),
          side: const BorderSide(
            color: Color(0xFFFE5A01),
            width: 1,
          ),
        ),
        child: Text(
          text,
          style: const TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 16,
            color: Color(0xFF4A4B4D),
          ),
        ),
      ),
    );
  }
}
