import 'package:e_commerce/constants/routes_names.dart';
import 'package:e_commerce/screens/cart.dart';
import 'package:e_commerce/screens/feedback.dart';
import 'package:e_commerce/screens/home.dart';
import 'package:e_commerce/screens/intro.dart';
import 'package:e_commerce/screens/location.dart';
import 'package:e_commerce/screens/location_detect.dart';
import 'package:e_commerce/screens/login.dart';
import 'package:e_commerce/screens/new_password.dart';
import 'package:e_commerce/screens/offers.dart';
import 'package:e_commerce/screens/order_status.dart';
import 'package:e_commerce/screens/otp.dart';
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
      case RoutesNames.otp:
        return MaterialPageRoute(builder: (_) => const OtpScreen());
      case RoutesNames.newPassword:
        return MaterialPageRoute(builder: (_) => const NewPasswordScreen());
      case RoutesNames.location:
        return MaterialPageRoute(builder: (_) => const LocationScreen());
      case RoutesNames.home:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case RoutesNames.offers:
        return MaterialPageRoute(builder: (_) => const OffersScreen());
      case RoutesNames.cart:
        return MaterialPageRoute(builder: (_) => const CartScreen());
      case RoutesNames.locationDetect:
        return MaterialPageRoute(builder: (_) => const LocationDetectScreen());
      case RoutesNames.orderStatus:
        return MaterialPageRoute(builder: (_) => const OrderStatusScreen());
      case RoutesNames.feedback:
        return MaterialPageRoute(builder: (_) => const FeedbackScreen());
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
