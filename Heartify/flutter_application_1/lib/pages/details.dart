import 'dart:collection';
import 'dart:ffi';
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/userdata.dart';
import 'package:flutter_application_1/provider/baseclient.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_swipe_detector/flutter_swipe_detector.dart';

import '../models/data.dart';

class DetailsPage extends StatefulWidget {
  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  final age = TextEditingController();
  final sex = TextEditingController();
  final cp = TextEditingController();
  final trestbps = TextEditingController();
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
                    child: InkWell(
                      onTap: () async {
                        var url = Uri.parse('http://localhost:8000');
                        var response = await http.get(url);
                        if (response.statusCode == 200) {
                          print(response.body);
                        } else {
                          print('Error: ${response.statusCode}');
                        }
                      },
                      child: const Text(
                        "Details in!",
                        style: TextStyle(
                            fontFamily: "Inria Sans",
                            fontSize: 32,
                            fontWeight: FontWeight.w700),
                      ),
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
                              return "invalid value";
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
                              return "Invalid value";
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
                              return "Invalid value";
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
                            hintText: "Trestbps",
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
                              return "Invalid value";
                            }
                          },
                          controller: trestbps,
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
                              return "Invalid value";
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
                              return "Invalid value";
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
                              return "Invalid value";
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
                              return "Invalid value";
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
                            return "Invalid value";
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
                              return "Invalid value";
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
                              return "Invalid value";
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
                              return "Invalid value";
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
                onTap: () async {
                  if (_formkey.currentState!.validate()) {
                    UserData userData = UserData(
                        age: age.text,
                        sex: sex.text,
                        cp: cp.text,
                        trestbps: trestbps.text,
                        chol: chol.text,
                        fbs: fbs.text,
                        restecg: restecg.text,
                        thalch: thalch.text,
                        exang: exang.text,
                        oldpeak: oldpeak.text,
                        slope: slope.text,
                        ca: ca.text);
                    helper(userData);
                  }
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

  Future<void> helper(var userData) async {
    //encoding age
    int age = int.parse(userData.age);
    int ageEncoded = 0;
    var ageList = [40, 50, 60, 70, 150];
    for (int i = 0; i < ageList.length; i++) {
      if (age <= ageList[i]) {
        ageEncoded = i;
        break;
      }
    }
    //encoding sex
    String sex = userData.sex.toLowerCase();
    int sexEncoded = sex[0] == 'm' ? 1 : 0;

    //encoding chest pain
    String cp = userData.cp.toLowerCase();
    int cpEncoded = 0;
    var cpList = [
      "typical angina",
      "atypical angina",
      "non angina",
      "asymptomatic"
    ];

    for (int i = 0; i < cpList.length; i++) {
      if (cpList[i] == cp) {
        cpEncoded = i + 1;
      }
    }

    //encoding trestbps
    int trestbps = int.parse(userData.trestbps);
    var trestbpsList = [105, 120, 135, 150, 165, 180, 500];
    int trestbpsEncoded = 0;

    for (int i = 0; i < trestbpsList.length; i++) {
      if (trestbps <= trestbpsList[i]) {
        trestbpsEncoded = i + 1;
        break;
      }
    }

    //encoding cholestrol levels
    int chol = int.parse(userData.chol);
    var cholList = [175, 225, 275, 325, 375, 425, 475, 525, 1000];
    int cholEncoded = 0;
    for (int i = 0; i < cholList.length; i++) {
      if (chol <= cholList[i]) {
        cholEncoded = i;
        break;
      }
    }
    //encoding fbs
    String fbs = userData.fbs.toLowerCase();
    int fbsEncoded = fbs[0] == 't' ? 1 : 0;

    //encoding restecg
    String restecg = userData.restecg.toLowerCase();
    int restecgEncoded = 0;
    var restecgMap = HashMap();
    restecgMap["n"] = 0;
    restecgMap["s"] = 1;
    restecgMap["l"] = 2;

    restecgEncoded = restecgMap[restecg[0]] ?? 0;

    //encoding thalch
    int thalch = int.parse(userData.thalch);
    var thalchList = [105, 120, 135, 150, 165, 180, 250];
    int thalchEncoded = 0;
    for (int i = 0; i < thalchList.length; i++) {
      if (thalch <= thalchList[i]) {
        thalchEncoded = i + 1;
        break;
      }
    }
    // encoding exang
    String exang = userData.exang.toLowerCase();
    int exangEncoded = exang[0] == "t" ? 1 : 0;

    //encoding oldpeak
    double oldpeak = double.parse(userData.oldpeak);
    int oldpeakEncoded = oldpeak.floor();

    //encoding slope
    String slope = userData.slope.toLowerCase();
    var slopeList = ["upsloping", "flat", "downsloping"];
    int slopeEncoded = 0;
    for (int i = 0; i < slopeList.length; i++) {
      if (slopeList[i] == slope) {
        slopeEncoded = i + 1;
      }
    }
    var data = {
      "age": ageEncoded.toString(),
      "sex": sexEncoded.toString(),
      "cp": cpEncoded.toString(),
      "trestbps": trestbpsEncoded.toString(),
      "chol": cholEncoded.toString(),
      "fbs": fbsEncoded.toString(),
      "restecg": restecgEncoded.toString(),
      "thalch": thalchEncoded.toString(),
      "exang": exangEncoded.toString(),
      "oldpeak": oldpeakEncoded.toString(),
      "slope": slopeEncoded.toString()
    };
  }
}
