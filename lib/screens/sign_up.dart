import 'package:e_commerce/widgets/button_widgets.dart';
import 'package:e_commerce/widgets/input_fields.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const Text('Login'),
            const Text('Add your details to login'),
            const CustomTextFiled(
              isPassword: false,
              placeholder: 'Mobile No',
            ),
            const CustomTextFiled(
              isPassword: true,
              placeholder: 'Password',
            ),
            PrimaryBtn(
              text: 'Login',
              onPressed: () {},
            ),
            TextButton(
              onPressed: () {},
              child: const Text('Forgot your password?'),
            ),
          ],
        ),
      ),
    );
  }
}
