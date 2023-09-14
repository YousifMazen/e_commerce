import 'package:e_commerce/constants/routes_names.dart';
import 'package:e_commerce/widgets/button_widgets.dart';
import 'package:e_commerce/widgets/input_fields.dart';
import 'package:e_commerce/widgets/typohraphy.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const Expanded(
                flex: 4,
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        top: 40,
                        bottom: 15,
                      ),
                      child: TitleFont(
                        text: 'Sign Up',
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        bottom: 30,
                      ),
                      child: SubTitleFont(
                        text: 'Add your details to sign up',
                      ),
                    ),
                    SizedBox(
                      height: 70,
                    ),
                    CustomTextFiled(
                      isPassword: false,
                      placeholder: 'Name',
                    ),
                    CustomTextFiled(
                      isPassword: true,
                      placeholder: 'Mobile No',
                    ),
                    CustomTextFiled(
                      isPassword: true,
                      placeholder: 'Address',
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  children: [
                    const Spacer(),
                    PrimaryBtn(
                      text: 'Sign up',
                      onPressed: () =>
                          Navigator.of(context).pushNamed(RoutesNames.otp),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SubTitleFont(
                          text: 'Already have an Account?',
                        ),
                        TextButton(
                          onPressed: () => Navigator.of(context)
                              .pushNamedAndRemoveUntil(
                                  RoutesNames.login, (route) => false),
                          child: const Text(
                            'Login',
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
