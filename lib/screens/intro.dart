import 'package:e_commerce/widgets/button_widgets.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  // To track the current page
  PageController _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Page view
          PageView(
            controller: _controller,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 30,
                    ),
                    child: Image.asset(
                      'assets/intro1.png',
                      width: MediaQuery.of(context).size.width / 1.4,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'Find Food You Love',
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 70),
                    child: Text(
                      'Discover the best foods from over 1,000 restaurants and fast delivery to your doorstep',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                  ),
                  PrimaryBtn(
                    text: 'Next',
                    onPressed: () {},
                  ),
                ],
              ),
              Container(
                color: Colors.green,
              ),
              Container(
                color: Colors.orange,
              ),
            ],
          ),
          // Dot indicator
          Container(
            alignment: const Alignment(0, 0.2),
            child: SmoothPageIndicator(
              controller: _controller,
              count: 3,
              effect: CustomizableEffect(
                activeDotDecoration: DotDecoration(
                  width: 12,
                  height: 12,
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(10),
                ),
                dotDecoration: DotDecoration(
                  width: 12,
                  height: 12,
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(10),
                  verticalOffset: 0,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
