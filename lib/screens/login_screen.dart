import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
                Container(
                  height: (MediaQuery.of(context).size.height -
                          MediaQuery.of(context).padding.top) /
                      2,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          width: 320,
                          height: 50,
                          margin: const EdgeInsets.only(bottom: 18),
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                            child: const Text('Login'),
                          ),
                        ),
                        Container(
                          width: 320,
                          height: 50,
                          margin: const EdgeInsets.only(bottom: 30),
                          child: OutlinedButton(
                            onPressed: () {},
                            style: OutlinedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              side: const BorderSide(
                                color: Color(0xFFFE5A01),
                                width: 1,
                              ),
                            ),
                            child: const Text(
                              'Create an Account',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
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

// Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.end,
//             children: [
//               Container(
//                 width: 320,
//                 height: 50,
//                 margin: const EdgeInsets.only(bottom: 18),
//                 child: ElevatedButton(
//                   onPressed: () {},
//                   style: ElevatedButton.styleFrom(
//                     elevation: 0,
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(8.0),
//                     ),
//                   ),
//                   child: const Text('Login'),
//                 ),
//               ),
//               Container(
//                 width: 320,
//                 height: 50,
//                 margin: const EdgeInsets.only(bottom: 30),
//                 child: OutlinedButton(
//                   onPressed: () {},
//                   style: OutlinedButton.styleFrom(
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(8.0),
//                     ),
//                     side: const BorderSide(
//                       color: Color(0xFFFE5A01),
//                       width: 1,
//                     ),
//                   ),
//                   child: const Text(
//                     'Create an Account',
//                     style: TextStyle(
//                       color: Colors.black,
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
