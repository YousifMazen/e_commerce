import 'package:e_commerce/constants/routes_names.dart';
import 'package:e_commerce/widgets/button_widgets.dart';
import 'package:e_commerce/widgets/input_fields.dart';
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
              Expanded(
                flex: 4,
                child: Column(
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(
                        top: 40,
                        bottom: 15,
                      ),
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                          fontSize: 40,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        bottom: 30,
                      ),
                      child: Text('Add your details to sign up'),
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
              Align(
                alignment: Alignment.bottomCenter,
                child: Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      PrimaryBtn(
                        text: 'Sign up',
                        onPressed: () => Navigator.of(context)
                            .pushNamed(RoutesNames.newPassword),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text("Already have an Account?"),
                          TextButton(
                            onPressed: () => Navigator.of(context)
                                .pushNamedAndRemoveUntil(
                                    RoutesNames.login, (route) => false),
                            child: const Text('Login'),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
