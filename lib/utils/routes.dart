import 'package:e_commerce/constants/routes_names.dart';
import 'package:e_commerce/screens/intro.dart';
import 'package:e_commerce/screens/login.dart';
import 'package:e_commerce/screens/new_password.dart';
import 'package:e_commerce/screens/registeration_type.dart';
import 'package:e_commerce/screens/sign_up.dart';
import 'package:flutter/material.dart';

class AppRouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesNames.rootScreen:
        return MaterialPageRoute(builder: (_) => const IntroScreen());
      case RoutesNames.registerationType:
        return MaterialPageRoute(
            builder: (_) => const RegisterationTypeScreen());
      case RoutesNames.login:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      case RoutesNames.signUp:
        return MaterialPageRoute(builder: (_) => const SignUpScreen());
      case RoutesNames.newPassword:
        return MaterialPageRoute(builder: (_) => const NewPasswordScreen());
      default:
        // Open this page if wrong route address used
        return MaterialPageRoute(
          builder: (_) => const Scaffold(
            body: SafeArea(
              child: Center(
                child: Text('Page not found'),
              ),
            ),
          ),
        );
    }
  }
}
