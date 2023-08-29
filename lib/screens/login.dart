import 'package:e_commerce/widgets/button_widgets.dart';
import 'package:e_commerce/widgets/input_fields.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                flex: 4,
                // color: Colors.amber,
                // height: (MediaQuery.of(context).size.height -
                //         MediaQuery.of(context).padding.top) /
                //     1.3,
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(
                        top: 40,
                        bottom: 15,
                      ),
                      child: Text(
                        'Login',
                        style: TextStyle(
                          fontSize: 40,
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(
                        bottom: 30,
                      ),
                      child: Text('Add your details to login'),
                    ),
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
              Align(
                alignment: Alignment.bottomCenter,
                child: Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      const Text('or Login With'),
                      const SizedBox(
                        height: 10,
                      ),
                      PrimaryBtn(
                        text: 'Login with Google',
                        onPressed: () {},
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text("Don't have an Account? "),
                          TextButton(
                            onPressed: () {},
                            child: const Text('Sign Up'),
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
