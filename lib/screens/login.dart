import 'package:e_commerce/constants/routes_names.dart';
import 'package:e_commerce/constants/values.dart';
import 'package:e_commerce/widgets/button_widgets.dart';
import 'package:e_commerce/widgets/input_fields.dart';
import 'package:e_commerce/widgets/typohraphy.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
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
                      child: TitleFont(
                        text: 'Login',
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(
                        bottom: 30,
                      ),
                      child: SubTitleFont(
                        text: 'Add your details to login',
                      ),
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
                      onPressed: () => Navigator.of(context)
                          .pushNamedAndRemoveUntil(
                              RoutesNames.home, (route) => false),
                    ),
                    TextButton(
                      style: const ButtonStyle(
                        foregroundColor: MaterialStatePropertyAll(
                          Color(0xFF7C7D7E),
                        ),
                      ),
                      onPressed: () => Navigator.of(context)
                          .pushNamed(RoutesNames.newPassword),
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
                      const SubTitleFont(text: 'or Login With'),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: 320,
                        height: 50,
                        margin: const EdgeInsets.only(bottom: 18),
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            side: const BorderSide(color: Color(0xFFDD4B39)),
                            elevation: 0,
                            backgroundColor: const Color(0xFFDD4B39),
                            shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.circular(Values.inputs_br),
                            ),
                          ),
                          child: const Text(
                            'Login with Google',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 45,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const SubTitleFont(text: "Don't have an Account?"),
                          TextButton(
                            onPressed: () => Navigator.of(context)
                                .pushNamedAndRemoveUntil(
                                    RoutesNames.signUp, (route) => false),
                            child: const Text(
                              'Sign Up',
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
