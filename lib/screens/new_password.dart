import 'package:e_commerce/constants/routes_names.dart';
import 'package:e_commerce/widgets/button_widgets.dart';
import 'package:e_commerce/widgets/input_fields.dart';
import 'package:e_commerce/widgets/typohraphy.dart';
import 'package:flutter/material.dart';

class NewPasswordScreen extends StatelessWidget {
  const NewPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 40, bottom: 18),
                child: TitleFont(text: 'New Password'),
              ),
              const SubTitleFont(
                text:
                    'Please enter your email to receive a link to create a new password via email',
              ),
              const SizedBox(height: 40),
              const CustomTextFiled(
                isPassword: true,
                placeholder: 'New Password',
              ),
              const CustomTextFiled(
                isPassword: true,
                placeholder: 'Confirm Password',
              ),
              PrimaryBtn(
                text: 'Next',
                onPressed: () => Navigator.of(context).pushNamedAndRemoveUntil(
                    RoutesNames.location, (route) => false),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
