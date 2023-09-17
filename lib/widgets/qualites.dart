import 'package:flutter/material.dart';

class QualitiesWidget extends StatefulWidget {
  const QualitiesWidget({super.key, required this.title});

  final String title;

  @override
  State<QualitiesWidget> createState() => _QualitiesWidgetState();
}

class _QualitiesWidgetState extends State<QualitiesWidget> {
  int _numOfStars = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 43,
      margin: const EdgeInsets.only(left: 17, right: 17, bottom: 20),
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(8),
          )),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 12, bottom: 12, left: 16),
              child: Text(
                widget.title,
                style: const TextStyle(
                  fontSize: 18,
                  color: Color(0xff9E9E9E),
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(right: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                    constraints:
                        const BoxConstraints(minWidth: 30, maxWidth: 30),
                    onPressed: () {
                      setState(() {
                        _numOfStars = 1;
                      });
                    },
                    icon: Icon(
                      Icons.star,
                      color: _numOfStars >= 1
                          ? const Color(0xffFDD80D)
                          : const Color(0xffF5F7FB),
                      size: 20,
                    ),
                  ),
                  IconButton(
                    constraints:
                        const BoxConstraints(minWidth: 30, maxWidth: 30),
                    onPressed: () {
                      setState(() {
                        _numOfStars = 2;
                      });
                    },
                    icon: Icon(
                      Icons.star,
                      color: _numOfStars >= 2
                          ? const Color(0xffFDD80D)
                          : const Color(0xffF5F7FB),
                      size: 20,
                    ),
                  ),
                  IconButton(
                    constraints:
                        const BoxConstraints(minWidth: 30, maxWidth: 30),
                    onPressed: () {
                      setState(() {
                        _numOfStars = 3;
                      });
                    },
                    icon: Icon(
                      Icons.star,
                      color: _numOfStars >= 3
                          ? const Color(0xffFDD80D)
                          : const Color(0xffF5F7FB),
                      size: 20,
                    ),
                  ),
                  IconButton(
                    constraints:
                        const BoxConstraints(minWidth: 30, maxWidth: 30),
                    onPressed: () {
                      setState(() {
                        _numOfStars = 4;
                      });
                    },
                    icon: Icon(
                      Icons.star,
                      color: _numOfStars >= 4
                          ? const Color(0xffFDD80D)
                          : const Color(0xffF5F7FB),
                      size: 20,
                    ),
                  ),
                  IconButton(
                    constraints:
                        const BoxConstraints(minWidth: 30, maxWidth: 30),
                    onPressed: () {
                      setState(() {
                        _numOfStars = 5;
                      });
                    },
                    icon: Icon(
                      Icons.star,
                      color: _numOfStars >= 5
                          ? const Color(0xffFDD80D)
                          : const Color(0xffF5F7FB),
                      size: 20,
                    ),
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
