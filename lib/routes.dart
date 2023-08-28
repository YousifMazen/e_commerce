import 'package:e_commerce/screens/registeration_type.dart';
import 'package:flutter/material.dart';

class AppRouteGenerator {
  static const String rootScreen = '/';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case rootScreen:
        return MaterialPageRoute(builder: (_) => const RegisterationTypeScreen());
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
