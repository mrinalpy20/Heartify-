import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/homecard.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_swipe_detector/flutter_swipe_detector.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> homeCardsList = [
    HomeCard(
      text:
          "Start your journey towards a healthier heart by predicting your disease risk.",
      imageUrl: "assets/images/HomePageImage1.png",
      imagewidth: 0.8,
      padding: 0.05,
    ),
    HomeCard(
      text:
          "Simply and securely provide your heart test report details from the hospital to get accurate and personalized predictions that cater specifically to your unique health situation.",
      imageUrl: "assets/images/HomePageImage2.png",
      imagewidth: 1,
      padding: 0.08,
    ),
    HomeCard(
      text:
          "Our ML-powered system predicts your heart disease probability and highlights actionable parameters like blood sugar cholesterol etc.",
      imageUrl: "assets/images/HomePageImage3.png",
      imagewidth: 1,
      padding: 0.07,
    ),
  ];
  int homecard_index = 0;
  @override
  Widget build(BuildContext context) {
    var deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SwipeDetector(
        onSwipeLeft: (offset) {
          if (homecard_index < homeCardsList.length - 1) {
            homecard_index++;
            setState(() {});
          } else {
            Navigator.of(context).pushNamed("/details");
          }
        },
        onSwipeRight: (offset) {
          if (homecard_index > 0) {
            homecard_index--;
            setState(() {});
          }
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
            homeCardsList[homecard_index],
            // Stack(
            //   children: stackChildren,
            // ),
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
                  value: ((homecard_index + 1) / homeCardsList.length * 100),
                  min: 0.0,
                  max: 100.0,
                  onChanged: (newValue) {
                    // setState(() {
                    //   // _sliderValue = newValue;
                    // });
                  },
                ),
              ),
            ),
            new Spacer(),
            Padding(
              padding: EdgeInsets.only(
                  bottom: deviceSize.height * 0.03,
                  right: deviceSize.width * 0.03),
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
