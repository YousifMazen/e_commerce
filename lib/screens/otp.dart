import 'package:e_commerce/constants/routes_names.dart';
import 'package:e_commerce/constants/values.dart';
import 'package:e_commerce/screens/new_password.dart';
import 'package:e_commerce/widgets/button_widgets.dart';
import 'package:e_commerce/widgets/typohraphy.dart';
import 'package:flutter/material.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  late List<FocusNode> _focusNodes;
  late List<TextEditingController> _controllers;
  static const int _otpLength = 4;

  @override
  void initState() {
    super.initState();
    _focusNodes = List<FocusNode>.generate(_otpLength, (index) => FocusNode());
    _controllers = List<TextEditingController>.generate(
        _otpLength, (index) => TextEditingController());

    for (int i = 0; i < _otpLength - 1; i++) {
      _controllers[i].addListener(() {
        if (_controllers[i].text.length == 1) {
          _focusNodes[i + 1].requestFocus();
        }
      });
    }
  }

  @override
  void dispose() {
    for (var focusNode in _focusNodes) {
      focusNode.dispose();
    }
    for (var controller in _controllers) {
      controller.dispose();
    }
    super.dispose();
  }

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
                child: TitleFont(text: 'We have sent an OTP to your Mobile'),
              ),
              const SubTitleFont(
                text:
                    'Please check your mobile number 071*****12 continue to reset your password',
              ),
              const SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: List.generate(
                  _otpLength,
                  (index) => Container(
                    width: 56,
                    height: 56,
                    decoration: BoxDecoration(
                      color: const Color(0xFFF2F2F2),
                      borderRadius: BorderRadius.circular(Values.inputs_br),
                    ),
                    child: TextField(
                      textAlignVertical: TextAlignVertical.bottom,
                      controller: _controllers[index],
                      focusNode: _focusNodes[index],
                      maxLength: 1,
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 37,
                      ),
                      decoration: const InputDecoration(
                        hintText: '*',
                        hintStyle: TextStyle(
                          color: Color(0xFFB6B7B7),
                        ),
                        counterText: '',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              PrimaryBtn(
                text: 'Next',
                onPressed: _onSubmit,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SubTitleFont(
                    text: "Didn't Receive?",
                  ),
                  TextButton(
                    onPressed: () => Navigator.of(context)
                        .pushNamedAndRemoveUntil(
                            RoutesNames.login, (route) => false),
                    child: const Text(
                      'Click Here',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _onSubmit() {
    String otp = '';
    for (var controller in _controllers) {
      otp += controller.text;
    }
    Navigator.of(context)
        .pushNamedAndRemoveUntil(RoutesNames.newPassword, (route) => false);
    // print(otp);
    // Process the OTP
  }
}
