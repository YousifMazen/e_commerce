import 'package:e_commerce/constants/routes_names.dart';
import 'package:e_commerce/widgets/button_widgets.dart';
import 'package:flutter/material.dart';

class RegisterationTypeScreen extends StatelessWidget {
  const RegisterationTypeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          alignment: AlignmentDirectional.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  decoration: const BoxDecoration(
                    color: Color(0xFFFE5A01),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    ),
                  ),
                  height: (MediaQuery.of(context).size.height -
                          MediaQuery.of(context).padding.top) /
                      2,
                  width: double.infinity,
                ),
                SizedBox(
                  height: (MediaQuery.of(context).size.height -
                          MediaQuery.of(context).padding.top) /
                      2,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        PrimaryBtn(
                          text: 'Login',
                          onPressed: () => Navigator.of(context)
                              .pushNamed(RoutesNames.login),
                        ),
                        SecondaryBtn(
                          onPressed: () => Navigator.of(context)
                              .pushNamed(RoutesNames.signUp),
                          text: 'Create an Account',
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: const Color(0xFFFE5A01), width: 5),
                ),
                child: const CircleAvatar(
                  radius: 125,
                  backgroundImage: NetworkImage(
                    'https://images.unsplash.com/photo-1575936123452-b67c3203c357?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8aW1hZ2V8ZW58MHx8MHx8fDA%3D&w=1000&q=80',
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
