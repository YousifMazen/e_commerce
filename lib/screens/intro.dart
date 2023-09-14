import 'package:e_commerce/constants/routes_names.dart';
import 'package:e_commerce/widgets/button_widgets.dart';
import 'package:e_commerce/widgets/typohraphy.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  // To track the current page
  final PageController _controller = PageController();

  bool isLastPage = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Page view
          PageView(
            onPageChanged: (index) {
              setState(() {
                // If the index is 2 (last page) set the bool var to true.
                isLastPage = (index == 2);
              });
            },
            controller: _controller,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 100,
                    ),
                    child: SizedBox(
                      height: 370,
                      child: Image.asset(
                        'assets/intro1.png',
                        width: MediaQuery.of(context).size.width / 1.45,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 85,
                  ),
                  const TitleFont(
                    text: 'Find Food You Love',
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 70),
                    child: SubTitleFont(
                      text:
                          'Discover the best foods from over 1,000 restaurants and fast delivery to your doorstep',
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 100,
                    ),
                    child: SizedBox(
                      height: 370,
                      child: Image.asset(
                        'assets/intro2.png',
                        width: MediaQuery.of(context).size.width / 1.45,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 85,
                  ),
                  const TitleFont(
                    text: 'Fast Delivery',
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 70),
                    child: SubTitleFont(
                      text:
                          'Fast food delivery to your home, office wherever you are',
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 100,
                    ),
                    child: SizedBox(
                      height: 370,
                      child: Image.asset(
                        'assets/intro3.png',
                        width: MediaQuery.of(context).size.width / 1.45,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 85,
                  ),
                  const TitleFont(
                    text: 'Live Tracking',
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 70),
                    child: SubTitleFont(
                      text:
                          'Real time tracking of your food on the app once you placed the order',
                    ),
                  ),
                ],
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
          Container(
            alignment: const Alignment(0, 0.85),
            child: PrimaryBtn(
              text: 'Next',
              onPressed: isLastPage
                  ? () => Navigator.of(context).pushNamedAndRemoveUntil(
                      RoutesNames.registerationType, (route) => false)
                  : () {
                      _controller.nextPage(
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeInOut,
                      );
                    },
            ),
          )
        ],
      ),
    );
  }
}
