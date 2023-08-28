import 'package:e_commerce/screens/login_screen.dart';
import 'package:flutter/material.dart';

class AppRouteGenerator {
  static const String rootScreen = '/';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case rootScreen:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
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
