import 'package:e_commerce/constants/values.dart';
import 'package:e_commerce/widgets/button_widgets.dart';
import 'package:e_commerce/widgets/qualites.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class FeedbackScreen extends StatefulWidget {
  const FeedbackScreen({super.key});

  @override
  State<FeedbackScreen> createState() => _FeedbackScreenState();
}

class _FeedbackScreenState extends State<FeedbackScreen> {
  double _sliderValue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 243, 243, 243),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Lottie.asset(
              'assets/star.json',
              height: 200,
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 13),
              child: Text(
                'Rate Your Experience',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(23, 0, 23, 15),
              child: Text(
                'the best praise you can give us is to share your opinion on our\n services, In order to improve the level of service in\n the coming days',
                textAlign: TextAlign.center,
                softWrap: true,
                style: TextStyle(
                  fontSize: 11,
                  height: 1.2,
                  color: Color(0xff6F6F6F),
                ),
              ),
            ),
            Lottie.asset(
              'assets/stars_row.json',
              height: 55,
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 30),
              child: SliderTheme(
                data: SliderTheme.of(context).copyWith(
                  inactiveTickMarkColor: const Color(0xffCDCDCD),
                  activeTickMarkColor: const Color(0xFFFE5A01),
                  inactiveTrackColor: const Color(0xffCDCDCD),
                ),
                child: Slider(
                  min: 0,
                  max: 5,
                  divisions: 5,
                  label: '${_sliderValue.toInt().toString()} star(s)',
                  value: _sliderValue,
                  onChanged: (value) {
                    setState(() {
                      _sliderValue = value;
                    });
                  },
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20, bottom: 20),
              child: Row(
                children: [
                  Text(
                    'How is our service quality?',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            const QualitiesWidget(title: 'Sales'),
            const QualitiesWidget(title: 'Service'),
            const QualitiesWidget(title: 'Application'),
            const QualitiesWidget(title: 'Customer Care'),
            const Padding(
              padding: EdgeInsets.only(left: 20, bottom: 10),
              child: Row(
                children: [
                  Text(
                    'Share your opinion (Optional)',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 25),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 23),
                child: Container(
                  width: double.infinity,
                  height: 142,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 243, 243, 243),
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      color: const Color(0xffAAAAAA),
                      width: 1.5,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: TextFormField(
                      minLines: 1,
                      maxLines: 10,
                      keyboardType: TextInputType.multiline,
                      decoration: const InputDecoration(
                        enabledBorder: InputBorder.none,
                        hintText: 'Write Here...',
                        hintStyle: TextStyle(
                          color: Color(0xFFB6B7B7),
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Container(
                width: double.infinity,
                height: 50,
                margin: const EdgeInsets.only(bottom: 50),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(Values.inputs_br),
                    ),
                  ),
                  child: const Text(
                    'Send',
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}
