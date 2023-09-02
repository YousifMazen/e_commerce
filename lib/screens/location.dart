import 'package:e_commerce/constants/routes_names.dart';
import 'package:e_commerce/widgets/button_widgets.dart';
import 'package:flutter/material.dart';

class LocationScreen extends StatelessWidget {
  const LocationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Spacer(),
            Container(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(38, 38, 38, 24),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(24),
                      child: Image.asset('assets/location.png'),
                    ),
                  ),
                  const Text(
                    'Set your location to start exploring',
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xFF959FA8),
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(),
            Container(
              child: Column(
                children: [
                  PrimaryBtn(
                    text: 'Enable Location',
                    onPressed: () {},
                  ),
                  SecondaryBtn(
                    text: 'No, I do it later',
                    onPressed: () => Navigator.of(context)
                        .pushNamedAndRemoveUntil(
                            RoutesNames.home, (route) => false),
                  ),
                ],
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
