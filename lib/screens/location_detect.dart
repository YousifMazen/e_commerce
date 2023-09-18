import 'package:e_commerce/constants/routes_names.dart';
import 'package:e_commerce/constants/values.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:location_picker_flutter_map/location_picker_flutter_map.dart';
import 'package:flutter/material.dart';

class LocationDetectScreen extends StatelessWidget {
  const LocationDetectScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Delivery location'),
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
              height: 160,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(13),
                  topRight: Radius.circular(13),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 320,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(
                            top: 14,
                            bottom: 18,
                          ),
                          child: Text(
                            'Delivery location',
                            style: TextStyle(
                              fontSize: 13,
                              color: Color.fromARGB(178, 35, 29, 37),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 13),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 13),
                                child: SvgPicture.asset(
                                  'assets/location.svg',
                                  height: 22,
                                ),
                              ),
                              const Text(
                                'Lorem ipsum',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w700,
                                  color: Color.fromARGB(178, 35, 29, 37),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 320,
                    height: 50,
                    margin: const EdgeInsets.only(bottom: 18),
                    child: ElevatedButton(
                      onPressed: () => Navigator.of(context)
                          .pushNamed(RoutesNames.orderStatus),
                      style: ElevatedButton.styleFrom(
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(Values.inputs_br),
                        ),
                      ),
                      child: const Text(
                        'Deliver here',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 25,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
