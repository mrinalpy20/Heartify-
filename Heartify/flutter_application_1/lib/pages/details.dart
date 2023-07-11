import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_swipe_detector/flutter_swipe_detector.dart';

class DetailsPage extends StatefulWidget {
  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  final age = TextEditingController();
  final sex = TextEditingController();
  final cp = TextEditingController();
  final trestbsp = TextEditingController();
  final chol = TextEditingController();
  final thalch = TextEditingController();
  final exang = TextEditingController();
  final fbs = TextEditingController();
  final restecg = TextEditingController();
  final oldpeak = TextEditingController();
  final ca = TextEditingController();
  final slope = TextEditingController();

  //form key
  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Form(
        key: _formkey,
        child: SingleChildScrollView(
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(top: deviceSize.height * 0.03),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/logo.png',
                      width: deviceSize.width * 0.20,
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 6, right: 20),
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
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: deviceSize.width * 0.08),
                    child: const Text(
                      "Details in!",
                      style: TextStyle(
                          fontFamily: "Inria Sans",
                          fontSize: 32,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ],
              ),
              Container(
                width: deviceSize.width * 0.88,
                decoration: BoxDecoration(
                  color: Color(0xffB2EDC4).withOpacity(0.6),
                  borderRadius: BorderRadius.circular(12.0),
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
                      width: deviceSize.width * 0.45,
                      child: const Text(
                        "Input the following parameters accordingly to your medical report and see the results!",
                        style: TextStyle(
                            fontFamily: "Inter",
                            color: Color.fromARGB(255, 99, 98, 98)),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Image.asset(
                          'assets/images/details.jpg',
                          width: deviceSize.width * 0.3,
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: deviceSize.height * 0.04,
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: deviceSize.width * 0.08,
                    right: deviceSize.width * 0.08),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      flex: 4,
                      child: Padding(
                        padding:
                            EdgeInsets.only(right: deviceSize.width * 0.02),
                        child: TextFormField(
                          style: const TextStyle(
                              fontSize: 15,
                              color: Color.fromARGB(255, 251, 251, 251)),
                          textAlign: TextAlign.center,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Color(0xff1E4934).withOpacity(0.74),
                            border: const OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: 1, color: Color(0xff92E1A9)),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(35)),
                            ),
                            hintText: "Age",
                            hintStyle: const TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                            ),
                            enabledBorder: const OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: 1, color: Color(0xff92E1A9)),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(35)),
                            ),
                            contentPadding: EdgeInsets.zero,
                          ),
                          validator: (value) {
                            if (value!.isEmpty ||
                                int.parse(value!) <= 0 ||
                                int.parse(value!) > 100) {
                              return "Please enter a valid age";
                            }
                            return null;
                          },
                          controller: age,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 4,
                      child: Padding(
                        padding:
                            EdgeInsets.only(right: deviceSize.width * 0.01),
                        child: TextFormField(
                          style: const TextStyle(
                            fontSize: 15,
                            color: Color.fromARGB(255, 246, 246, 246),
                          ),
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Color(0xff1E4934).withOpacity(0.74),
                            border: const OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: 1, color: Color(0xff92E1A9)),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(35)),
                            ),
                            hintText: "Sex",
                            hintStyle: const TextStyle(
                              color: Color.fromARGB(255, 250, 250, 250),
                            ),
                            enabledBorder: const OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: 1, color: Color(0xff92E1A9)),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(35)),
                            ),
                            contentPadding: EdgeInsets.zero,
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Please enter a valid value";
                            }
                          },
                          controller: sex,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Padding(
                        padding: EdgeInsets.only(left: deviceSize.width * 0.01),
                        child: TextFormField(
                          style: const TextStyle(
                              fontSize: 15,
                              color: Color.fromARGB(255, 255, 255, 255)),
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Color(0xff1E4934).withOpacity(0.74),
                            border: const OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: 1, color: Color(0xff92E1A9)),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(35)),
                            ),
                            hintText: "Cp",
                            hintStyle: const TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                            ),
                            enabledBorder: const OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: 1, color: Color(0xff92E1A9)),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(35)),
                            ),
                            contentPadding: EdgeInsets.zero,
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Please enter a valid value";
                            }
                          },
                          controller: cp,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: deviceSize.width * 0.08,
                    right: deviceSize.width * 0.08,
                    top: deviceSize.height * 0.02),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      flex: 4,
                      child: Padding(
                        padding:
                            EdgeInsets.only(right: deviceSize.width * 0.02),
                        child: TextFormField(
                          style: const TextStyle(
                              fontSize: 15,
                              color: Color.fromARGB(255, 251, 251, 251)),
                          textAlign: TextAlign.center,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Color(0xff1E4934).withOpacity(0.74),
                            border: const OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: 1, color: Color(0xff92E1A9)),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(35)),
                            ),
                            hintText: "Trestbsp",
                            hintStyle: const TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                            ),
                            enabledBorder: const OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: 1, color: Color(0xff92E1A9)),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(35)),
                            ),
                            contentPadding: EdgeInsets.zero,
                          ),
                          validator: (value) {
                            if (value!.isEmpty || int.parse(value!) <= 0) {
                              return "Please enter a valid value";
                            }
                          },
                          controller: trestbsp,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Padding(
                        padding:
                            EdgeInsets.only(right: deviceSize.width * 0.01),
                        child: TextFormField(
                          style: const TextStyle(
                            fontSize: 15,
                            color: Color.fromARGB(255, 246, 246, 246),
                          ),
                          textAlign: TextAlign.center,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Color(0xff1E4934).withOpacity(0.74),
                            border: const OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: 1, color: Color(0xff92E1A9)),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(35)),
                            ),
                            hintText: "Chol",
                            hintStyle: const TextStyle(
                              color: Color.fromARGB(255, 250, 250, 250),
                            ),
                            enabledBorder: const OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: 1, color: Color(0xff92E1A9)),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(35)),
                            ),
                            contentPadding: EdgeInsets.zero,
                          ),
                          validator: (value) {
                            if (value!.isEmpty || int.parse(value!) <= 0) {
                              return "Please enter a valid value";
                            }
                          },
                          controller: chol,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 4,
                      child: Padding(
                        padding: EdgeInsets.only(left: deviceSize.width * 0.01),
                        child: TextFormField(
                          style: const TextStyle(
                              fontSize: 15,
                              color: Color.fromARGB(255, 255, 255, 255)),
                          textAlign: TextAlign.center,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Color(0xff1E4934).withOpacity(0.74),
                            border: const OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: 1, color: Color(0xff92E1A9)),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(35)),
                            ),
                            hintText: "Thalch",
                            hintStyle: const TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                            ),
                            enabledBorder: const OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: 1, color: Color(0xff92E1A9)),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(35)),
                            ),
                            contentPadding: EdgeInsets.zero,
                          ),
                          validator: (value) {
                            if (value!.isEmpty || int.parse(value!) <= 0) {
                              return "Please enter a valid value";
                            }
                          },
                          controller: thalch,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: deviceSize.width * 0.08,
                    right: deviceSize.width * 0.08,
                    top: deviceSize.height * 0.02),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      flex: 3,
                      child: Padding(
                        padding:
                            EdgeInsets.only(right: deviceSize.width * 0.01),
                        child: TextFormField(
                          style: const TextStyle(
                              fontSize: 15,
                              color: Color.fromARGB(255, 251, 251, 251)),
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Color(0xff1E4934).withOpacity(0.74),
                            border: const OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: 1, color: Color(0xff92E1A9)),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(35)),
                            ),
                            hintText: "Exang",
                            hintStyle: const TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                            ),
                            enabledBorder: const OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: 1, color: Color(0xff92E1A9)),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(35)),
                            ),
                            contentPadding: EdgeInsets.zero,
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Please enter a valid value";
                            }
                          },
                          controller: exang,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 4,
                      child: Padding(
                        padding: EdgeInsets.only(
                            right: deviceSize.width * 0.02,
                            left: deviceSize.width * 0.01),
                        child: TextFormField(
                          style: const TextStyle(
                            fontSize: 15,
                            color: Color.fromARGB(255, 246, 246, 246),
                          ),
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Color(0xff1E4934).withOpacity(0.74),
                            border: const OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: 1, color: Color(0xff92E1A9)),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(35)),
                            ),
                            hintText: "Fbs",
                            hintStyle: const TextStyle(
                              color: Color.fromARGB(255, 250, 250, 250),
                            ),
                            enabledBorder: const OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: 1, color: Color(0xff92E1A9)),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(35)),
                            ),
                            contentPadding: EdgeInsets.zero,
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Please enter a valid value";
                            }
                          },
                          controller: fbs,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: TextFormField(
                        style: const TextStyle(
                            fontSize: 15,
                            color: Color.fromARGB(255, 255, 255, 255)),
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Color(0xff1E4934).withOpacity(0.74),
                          border: const OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 1, color: Color(0xff92E1A9)),
                            borderRadius: BorderRadius.all(Radius.circular(35)),
                          ),
                          hintText: "Restecg",
                          hintStyle: const TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255),
                          ),
                          enabledBorder: const OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 1, color: Color(0xff92E1A9)),
                            borderRadius: BorderRadius.all(Radius.circular(35)),
                          ),
                          contentPadding: EdgeInsets.zero,
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Please enter a valid value";
                          }
                        },
                        controller: restecg,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: deviceSize.width * 0.08,
                    right: deviceSize.width * 0.08,
                    top: deviceSize.height * 0.02),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      flex: 4,
                      child: Padding(
                        padding:
                            EdgeInsets.only(right: deviceSize.width * 0.02),
                        child: TextFormField(
                          style: const TextStyle(
                              fontSize: 15,
                              color: Color.fromARGB(255, 251, 251, 251)),
                          textAlign: TextAlign.center,
                          keyboardType:
                              TextInputType.numberWithOptions(decimal: true),
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Color(0xff1E4934).withOpacity(0.74),
                            border: const OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: 1, color: Color(0xff92E1A9)),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(35)),
                            ),
                            hintText: "Oldpeak",
                            hintStyle: const TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                            ),
                            enabledBorder: const OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: 1, color: Color(0xff92E1A9)),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(35)),
                            ),
                            contentPadding: EdgeInsets.zero,
                          ),
                          validator: (value) {
                            if (value!.isEmpty || double.parse(value!) < 0) {
                              return "Please enter a valid value";
                            }
                          },
                          controller: oldpeak,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Padding(
                        padding:
                            EdgeInsets.only(right: deviceSize.width * 0.01),
                        child: TextFormField(
                          style: const TextStyle(
                            fontSize: 15,
                            color: Color.fromARGB(255, 246, 246, 246),
                          ),
                          textAlign: TextAlign.center,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Color(0xff1E4934).withOpacity(0.74),
                            border: const OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: 1, color: Color(0xff92E1A9)),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(35)),
                            ),
                            hintText: "Ca",
                            hintStyle: const TextStyle(
                              color: Color.fromARGB(255, 250, 250, 250),
                            ),
                            enabledBorder: const OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: 1, color: Color(0xff92E1A9)),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(35)),
                            ),
                            contentPadding: EdgeInsets.zero,
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Please enter a valid value";
                            }
                          },
                          controller: ca,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Padding(
                        padding: EdgeInsets.only(left: deviceSize.width * 0.01),
                        child: TextFormField(
                          style: const TextStyle(
                              fontSize: 15,
                              color: Color.fromARGB(255, 255, 255, 255)),
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Color(0xff1E4934).withOpacity(0.74),
                            border: const OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: 1, color: Color(0xff92E1A9)),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(35)),
                            ),
                            hintText: "Slope",
                            hintStyle: const TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                            ),
                            enabledBorder: const OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: 1, color: Color(0xff92E1A9)),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(35)),
                            ),
                            contentPadding: EdgeInsets.zero,
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Please enter a valid value";
                            }
                          },
                          controller: slope,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: deviceSize.height * 0.04,
              ),
              InkWell(
                onTap: () {
                  if (_formkey.currentState!.validate()) {}
                },
                child: Container(
                  height: 45,
                  width: deviceSize.width * 0.75,
                  decoration: BoxDecoration(
                      color: Color(0xFF35D375).withOpacity(0.5),
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  alignment: Alignment.center,
                  child: const Text(
                    "Submit",
                    style: TextStyle(
                        color: Color(0xA3000000),
                        fontSize: 14,
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
