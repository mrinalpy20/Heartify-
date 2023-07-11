import 'package:flutter/material.dart';

class HomeCard extends StatelessWidget {
  String text;
  String imageUrl;
  double imagewidth;
  double padding;
  HomeCard(
      {required this.text,
      required this.imageUrl,
      required this.imagewidth,
      required this.padding});
  @override
  Widget build(BuildContext context) {
    var deviceSize = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          width: deviceSize.width * 0.88,
          decoration: BoxDecoration(
            color: Color(0xffB2EDC4).withOpacity(1),
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
                child: Text(
                  text,
                  style: const TextStyle(
                      fontFamily: "Inter",
                      color: Color.fromARGB(255, 99, 98, 98)),
                ),
              ),
              SizedBox(
                height: deviceSize.height * padding,
              ),
              Padding(
                padding: EdgeInsets.only(bottom: deviceSize.width * 0.10),
                child: Image.asset(
                  imageUrl,
                  width: deviceSize.width * imagewidth,
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
