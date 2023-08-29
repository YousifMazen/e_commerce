import 'package:e_commerce/utils/routes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          colorScheme: ColorScheme.fromSwatch().copyWith(
        primary: const Color(0xFFFE5A01),
        // secondary: const Color(0xFFFFC107),
      )),
      initialRoute: '/',
      onGenerateRoute: AppRouteGenerator.generateRoute,
    );
  }
}
