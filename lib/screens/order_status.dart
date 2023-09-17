import 'package:e_commerce/constants/routes_names.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:location_picker_flutter_map/location_picker_flutter_map.dart';
import 'package:flutter/material.dart';

class OrderStatusScreen extends StatefulWidget {
  const OrderStatusScreen({super.key});

  @override
  State<OrderStatusScreen> createState() => _OrderStatusScreenState();
}

class _OrderStatusScreenState extends State<OrderStatusScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Order Status'),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          FlutterLocationPicker(
            zoomButtonsBackgroundColor: const Color(0xFFFE5A01),
            locationButtonBackgroundColor: const Color(0xFFFE5A01),
            showCurrentLocationPointer: false,
            showSearchBar: false,
            initZoom: 15,
            minZoomLevel: 5,
            markerIcon: SvgPicture.asset(
              'assets/location.svg',
              height: 60,
            ),
            showSelectLocationButton: false,
            showZoomController: false,
            showLocationController: false,
            trackMyPosition: true,
            onPicked: (pickedData) {},
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: double.infinity,
              height: 485,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(13),
                  topRight: Radius.circular(13),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Divider(
                    thickness: 1.5,
                    indent: 175,
                    endIndent: 175,
                  ),
                  SvgPicture.asset(
                    'assets/preparing.svg',
                    height: 176,
                  ),
                  const Text(
                    'Estimated delivery time',
                    style: TextStyle(
                      fontSize: 13,
                      color: Color(0xff222226),
                    ),
                  ),
                  const Text(
                    'Within 30 mins',
                    style: TextStyle(
                      fontSize: 13,
                      color: Color(0xff222226),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Container(
                            width: 61,
                            height: 57,
                            decoration: BoxDecoration(
                              color: const Color(0XFFFFDDCA),
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(
                                width: 1,
                                color: const Color(0xffFE5A01),
                              ),
                            ),
                            child: const Icon(
                              Icons.list_alt_rounded,
                              size: 40,
                              color: Color(0xffFE5A01),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            'Preparing',
                            style: TextStyle(
                              color: Color(0xff222226),
                              fontSize: 13,
                            ),
                          )
                        ],
                      ),
                      // Line
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: Container(
                          margin: const EdgeInsets.symmetric(horizontal: 5),
                          width: 25,
                          height: 1,
                          color: const Color(0xffBFBFBF),
                        ),
                      ),
                      Column(
                        children: [
                          Container(
                            width: 61,
                            height: 57,
                            decoration: BoxDecoration(
                              color: const Color(0XFFF4F4F4),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: const Icon(
                              Icons.directions_bike_rounded,
                              size: 40,
                              color: Color(0xffAEB4B7),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                      // Line
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: Container(
                          margin: const EdgeInsets.symmetric(horizontal: 5),
                          width: 25,
                          height: 1,
                          color: const Color(0xffBFBFBF),
                        ),
                      ),
                      Column(
                        children: [
                          Container(
                            width: 61,
                            height: 57,
                            decoration: BoxDecoration(
                              color: const Color(0XFFF4F4F4),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: const Icon(
                              Icons.check_circle_outline,
                              size: 40,
                              color: Color(0xffAEB4B7),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ],
                  ),
                  const Divider(
                    thickness: 1.5,
                  ),
                  OutlinedButton(
                    onPressed: () =>
                        Navigator.of(context).pushNamed(RoutesNames.feedback),
                    style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(7),
                      ),
                      side: const BorderSide(
                        color: Color(0xFFFE5A01),
                        width: 1,
                      ),
                    ),
                    child: const Text(
                      'Order Details',
                      style: TextStyle(
                        fontSize: 13,
                        color: Color(0xFFFE5A01),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
