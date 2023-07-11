import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_swipe_detector/flutter_swipe_detector.dart';

class HomePage2 extends StatefulWidget {
  @override
  _HomePage2State createState() => _HomePage2State();
}

class _HomePage2State extends State<HomePage2> {
  @override
  Widget build(BuildContext context) {
    var deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SwipeDetector(
        onSwipeLeft: (offset) {
          Navigator.of(context).pushNamed("/home3");
        },
        onSwipeRight: (offset) {
          Navigator.of(context).pushNamed("/home1");
        },
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(top: deviceSize.height * 0.05),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/logo.png',
                    width: deviceSize.width * 0.20,
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 10, right: 20),
                    child: Text(
                      "Heartify",
                      style: TextStyle(
                          fontSize: deviceSize.height * 0.025,
                          fontFamily: 'Inria Sans',
                          fontWeight: FontWeight.w500),
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: deviceSize.width * 0.88,
              decoration: BoxDecoration(
                color: Color(0xffB2EDC4).withOpacity(0.6),
                borderRadius: BorderRadius.circular(8.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    offset: Offset(0, 2),
                    blurRadius: 1.0,
                    spreadRadius: 2.0,
                  ),
                ],
              ),
              padding: EdgeInsets.all(deviceSize.width * 0.08),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: deviceSize.width * 0.4,
                    child: const Text(
                      "Simply provide your heart test report details from the hospital to get personalized predictions.",
                      style: TextStyle(
                          fontFamily: "Inter",
                          color: Color.fromARGB(255, 99, 98, 98)),
                    ),
                  ),
                  SizedBox(
                    height: deviceSize.height * 0.07,
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: deviceSize.width * 0.15),
                    child: Image.asset(
                      'assets/images/HomePageImage2.png',
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 35, right: 35, top: 20),
              child: SliderTheme(
                data: SliderThemeData(
                  trackHeight: 13.0,
                  activeTrackColor: const Color.fromARGB(255, 5, 5, 5),
                  inactiveTrackColor: const Color(0xFFB2EDC4),
                  thumbColor: Color.fromARGB(255, 5, 5, 5),
                  overlayColor: const Color(0xFFB2EDC4).withOpacity(0.2),
                  thumbShape: RoundSliderThumbShape(enabledThumbRadius: 7.0),
                  overlayShape: RoundSliderOverlayShape(overlayRadius: 20.0),
                ),
                child: Slider(
                  value: 66.7,
                  min: 0.0,
                  max: 100.0,
                  onChanged: (newValue) {
                    setState(() {
                      // _sliderValue = newValue;
                    });
                  },
                ),
              ),
            ),
            new Spacer(),
            Padding(
              padding: EdgeInsets.only(
                  bottom: deviceSize.height * 0.03,
                  right: deviceSize.width * 0.01),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Text(
                    'Skip',
                    style: TextStyle(
                      color: Color(0xFF122B1F),
                      fontSize: 15,
                      fontFamily: 'Inria Sans',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Image.asset(
                    'assets/images/skip.png',
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
