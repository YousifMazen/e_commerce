import 'package:e_commerce/constants/values.dart';
import 'package:e_commerce/widgets/input_fields.dart';
import 'package:e_commerce/widgets/typohraphy.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Header
              Column(
                children: [
                  Stack(
                    alignment: AlignmentDirectional.center,
                    children: [
                      Container(
                        width: double.infinity,
                        height: 244,
                        child: Image.asset('assets/home_header.png',
                            fit: BoxFit.cover),
                      ),
                      Positioned(
                        top: 54,
                        child: Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: const Color(0xFFF2F2F2),
                                borderRadius:
                                    BorderRadius.circular(Values.inputs_br),
                              ),
                              width: 320,
                              child: const TextField(
                                decoration: InputDecoration(
                                  enabledBorder: InputBorder.none,
                                  hintText: '          Search',
                                  hintStyle: TextStyle(
                                    color: Color(0xFFB6B7B7),
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              width: 51,
                              margin: const EdgeInsets.only(left: 7),
                              decoration: BoxDecoration(
                                color: const Color(0xFFF2F2F2),
                                borderRadius:
                                    BorderRadius.circular(Values.inputs_br),
                              ),
                              child: IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.home),
                              ),
                            )
                          ],
                        ),
                      ),
                      Positioned(
                        left: 23,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 75),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'Holland Bazar',
                                style: TextStyle(
                                  fontSize: 28,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                'Powered By TFC',
                                style: TextStyle(
                                  fontSize: 8,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              // Offers
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Offers',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF40484E),
                        height: 1.4,
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'See all >',
                        style: TextStyle(
                          color: Color(0xFFFE5A01),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // Offers list
              Align(
                alignment: AlignmentDirectional.centerStart,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 11),
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: const Color(0xFFFE5A01),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          margin: const EdgeInsets.symmetric(horizontal: 6),
                          width: 195,
                          height: 195,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: const Color(0xFFFE5A01),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          margin: const EdgeInsets.symmetric(horizontal: 6),
                          width: 195,
                          height: 195,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: const Color(0xFFFE5A01),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          margin: const EdgeInsets.symmetric(horizontal: 6),
                          width: 195,
                          height: 195,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: const Color(0xFFFE5A01),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          margin: const EdgeInsets.symmetric(horizontal: 6),
                          width: 195,
                          height: 195,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 39,
              ),
              // Shortcuts
              Align(
                alignment: AlignmentDirectional.centerStart,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 11),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(width: 1),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              margin: const EdgeInsets.symmetric(horizontal: 6),
                              width: 75,
                              height: 75,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(12),
                                child: Image.asset(
                                  'assets/home_header.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 5),
                              child: Text(
                                'Past Order',
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Color(0xFF40484E),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(width: 1),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              margin: const EdgeInsets.symmetric(horizontal: 6),
                              width: 75,
                              height: 75,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(12),
                                child: Image.asset(
                                  'assets/location.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 5),
                              child: Text(
                                'Free Delivery',
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Color(0xFF40484E),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(width: 1),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              margin: const EdgeInsets.symmetric(horizontal: 6),
                              width: 75,
                              height: 75,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(12),
                                child: Image.asset(
                                  'assets/intro1.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 5),
                              child: Text(
                                'Beverages',
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Color(0xFF40484E),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(width: 1),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              margin: const EdgeInsets.symmetric(horizontal: 6),
                              width: 75,
                              height: 75,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(12),
                                child: Image.asset(
                                  'assets/intro1.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 5),
                              child: Text(
                                'Beverages',
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Color(0xFF40484E),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(width: 1),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              margin: const EdgeInsets.symmetric(horizontal: 6),
                              width: 75,
                              height: 75,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(12),
                                child: Image.asset(
                                  'assets/intro1.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 5),
                              child: Text(
                                'Beverages',
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Color(0xFF40484E),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              // Frequently ordered
              Padding(
                padding: const EdgeInsets.fromLTRB(28, 20, 28, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Frequently Ordered',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF40484E),
                            height: 1.4,
                          ),
                        ),
                        Text(
                          'Suggestions based on your order history',
                          style: TextStyle(
                            fontSize: 9,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFFBABABA),
                            height: 1.4,
                          ),
                        ),
                      ],
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'See all >',
                        style: TextStyle(
                          color: Color(0xFFFE5A01),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // Frequently ordered list
              const SingleChildScrollView(),
            ],
          ),
        ),
      ),
    );
  }
}
