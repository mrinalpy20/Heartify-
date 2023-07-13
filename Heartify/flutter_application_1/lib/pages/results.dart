import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/homecard.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_swipe_detector/flutter_swipe_detector.dart';

class ResultsPage extends StatefulWidget {
  @override
  _ResultsPageState createState() => _ResultsPageState();
}

class _ResultsPageState extends State<ResultsPage> {
  @override
  Widget build(BuildContext context) {
    var deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(top: deviceSize.height * 0.03),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/logo.png',
                  width: deviceSize.width * 0.17,
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
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: deviceSize.width * 0.12),
                child: const Text(
                  "Results are in!",
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
            padding: EdgeInsets.only(
                top: deviceSize.width * 0.08,
                bottom: deviceSize.width * 0.08,
                left: deviceSize.width * 0.06,
                right: deviceSize.width * 0.06),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text("24%",
                      style: TextStyle(
                        color: Color(0xb7193527).withOpacity(.77),
                        fontSize: deviceSize.width * 0.18,
                        fontWeight: FontWeight.w600,
                      )),
                ),
                Expanded(
                  child: Container(
                    width: deviceSize.width * 0.35,
                    height: deviceSize.height * 0.20,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(27),
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Color(0xb7193527).withOpacity(0.6),
                            Color(0xff1a382a).withOpacity(0.4)
                          ],
                        )),
                    alignment: Alignment.center,
                    child: const Padding(
                      padding: EdgeInsets.only(left: 25, right: 25),
                      child: Text(
                        "Seems like you are quite safe ! we recommend you to look for parameters which are above the normal line",
                        style: TextStyle(
                            color: Color.fromARGB(255, 252, 252, 252),
                            fontSize: 12),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                top: deviceSize.height * 0.02,
                left: deviceSize.width * 0.085,
                right: deviceSize.width * 0.085),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: deviceSize.width * 0.40,
                  height: deviceSize.height * 0.19,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(27),
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color(0xff1a382a).withOpacity(0.4),
                          Color(0xb7193527).withOpacity(0.3)
                        ],
                      )),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: deviceSize.height * 0.01),
                        child: Text("Chest Pain",
                            style: TextStyle(
                              fontSize: deviceSize.height * 0.01,
                              fontWeight: FontWeight.w600,
                            )),
                      ),
                      SizedBox(
                        height: deviceSize.height * 0.01,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: deviceSize.width * 0.09,
                            right: deviceSize.width * 0.09),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Container(
                                  width: deviceSize.width * 0.085,
                                  height: deviceSize.height * 0.12,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Color(0xffe2e1e1)),
                                  padding: EdgeInsets.only(
                                      top: deviceSize.height * 0.06),
                                  child: Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          gradient: const LinearGradient(
                                            begin: Alignment.topCenter,
                                            end: Alignment.bottomCenter,
                                            colors: [
                                              Color(0xff81dfc2),
                                              Color(0x6b87d174)
                                            ],
                                          ))),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      top: deviceSize.height * 0.003),
                                  child: Text("Current",
                                      style: TextStyle(
                                        fontSize: deviceSize.height * 0.008,
                                        fontWeight: FontWeight.w600,
                                      )),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  width: deviceSize.width * 0.085,
                                  height: deviceSize.height * 0.12,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Color(0xffe2e1e1)),
                                  padding: EdgeInsets.only(
                                      top: deviceSize.height * 0.06),
                                  child: Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          gradient: const LinearGradient(
                                            begin: Alignment.topCenter,
                                            end: Alignment.bottomCenter,
                                            colors: [
                                              Color(0xff81dfc2),
                                              Color(0x6b87d174)
                                            ],
                                          ))),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      top: deviceSize.height * 0.003),
                                  child: Text("Normal",
                                      style: TextStyle(
                                        fontSize: deviceSize.height * 0.008,
                                        fontWeight: FontWeight.w600,
                                      )),
                                )
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  width: deviceSize.width * 0.40,
                  height: deviceSize.height * 0.19,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(27),
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color(0xff1a382a).withOpacity(0.4),
                          Color(0xb7193527).withOpacity(0.3)
                        ],
                      )),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: deviceSize.height * 0.01),
                        child: Text("Cholestrol",
                            style: TextStyle(
                              fontSize: deviceSize.height * 0.01,
                              fontWeight: FontWeight.w600,
                            )),
                      ),
                      SizedBox(
                        height: deviceSize.height * 0.01,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: deviceSize.width * 0.09,
                            right: deviceSize.width * 0.09),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Container(
                                  width: deviceSize.width * 0.085,
                                  height: deviceSize.height * 0.12,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Color(0xffe2e1e1)),
                                  padding: EdgeInsets.only(
                                      top: deviceSize.height * 0.06),
                                  child: Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          gradient: const LinearGradient(
                                            begin: Alignment.topCenter,
                                            end: Alignment.bottomCenter,
                                            colors: [
                                              Color(0xff81dfc2),
                                              Color(0x6b87d174)
                                            ],
                                          ))),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      top: deviceSize.height * 0.003),
                                  child: Text("Current",
                                      style: TextStyle(
                                        fontSize: deviceSize.height * 0.008,
                                        fontWeight: FontWeight.w600,
                                      )),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  width: deviceSize.width * 0.085,
                                  height: deviceSize.height * 0.12,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Color(0xffe2e1e1)),
                                  padding: EdgeInsets.only(
                                      top: deviceSize.height * 0.06),
                                  child: Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          gradient: const LinearGradient(
                                            begin: Alignment.topCenter,
                                            end: Alignment.bottomCenter,
                                            colors: [
                                              Color(0xff81dfc2),
                                              Color(0x6b87d174)
                                            ],
                                          ))),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      top: deviceSize.height * 0.003),
                                  child: Text("Normal",
                                      style: TextStyle(
                                        fontSize: deviceSize.height * 0.008,
                                        fontWeight: FontWeight.w600,
                                      )),
                                )
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                top: deviceSize.height * 0.01,
                left: deviceSize.width * 0.085,
                right: deviceSize.width * 0.085),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: deviceSize.width * 0.40,
                  height: deviceSize.height * 0.19,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(27),
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color(0xff1a382a).withOpacity(0.4),
                          Color(0xb7193527).withOpacity(0.3)
                        ],
                      )),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: deviceSize.height * 0.01),
                        child: Text("Exang",
                            style: TextStyle(
                              fontSize: deviceSize.height * 0.01,
                              fontWeight: FontWeight.w600,
                            )),
                      ),
                      SizedBox(
                        height: deviceSize.height * 0.01,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: deviceSize.width * 0.09,
                            right: deviceSize.width * 0.09),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Container(
                                  width: deviceSize.width * 0.085,
                                  height: deviceSize.height * 0.12,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Color(0xffe2e1e1)),
                                  padding: EdgeInsets.only(
                                      top: deviceSize.height * 0.06),
                                  child: Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          gradient: const LinearGradient(
                                            begin: Alignment.topCenter,
                                            end: Alignment.bottomCenter,
                                            colors: [
                                              Color(0xff81dfc2),
                                              Color(0x6b87d174)
                                            ],
                                          ))),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      top: deviceSize.height * 0.003),
                                  child: Text("Current",
                                      style: TextStyle(
                                        fontSize: deviceSize.height * 0.008,
                                        fontWeight: FontWeight.w600,
                                      )),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  width: deviceSize.width * 0.085,
                                  height: deviceSize.height * 0.12,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Color(0xffe2e1e1)),
                                  padding: EdgeInsets.only(
                                      top: deviceSize.height * 0.06),
                                  child: Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          gradient: const LinearGradient(
                                            begin: Alignment.topCenter,
                                            end: Alignment.bottomCenter,
                                            colors: [
                                              Color(0xff81dfc2),
                                              Color(0x6b87d174)
                                            ],
                                          ))),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      top: deviceSize.height * 0.003),
                                  child: Text("Normal",
                                      style: TextStyle(
                                        fontSize: deviceSize.height * 0.008,
                                        fontWeight: FontWeight.w600,
                                      )),
                                )
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  width: deviceSize.width * 0.40,
                  height: deviceSize.height * 0.19,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(27),
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color(0xff1a382a).withOpacity(0.4),
                          Color(0xb7193527).withOpacity(0.3)
                        ],
                      )),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: deviceSize.height * 0.01),
                        child: Text("Slope",
                            style: TextStyle(
                              fontSize: deviceSize.height * 0.01,
                              fontWeight: FontWeight.w600,
                            )),
                      ),
                      SizedBox(
                        height: deviceSize.height * 0.01,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: deviceSize.width * 0.09,
                            right: deviceSize.width * 0.09),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Container(
                                  width: deviceSize.width * 0.085,
                                  height: deviceSize.height * 0.12,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Color(0xffe2e1e1)),
                                  padding: EdgeInsets.only(
                                      top: deviceSize.height * 0.06),
                                  child: Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          gradient: const LinearGradient(
                                            begin: Alignment.topCenter,
                                            end: Alignment.bottomCenter,
                                            colors: [
                                              Color(0xff81dfc2),
                                              Color(0x6b87d174)
                                            ],
                                          ))),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      top: deviceSize.height * 0.003),
                                  child: Text("Current",
                                      style: TextStyle(
                                        fontSize: deviceSize.height * 0.008,
                                        fontWeight: FontWeight.w600,
                                      )),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  width: deviceSize.width * 0.085,
                                  height: deviceSize.height * 0.12,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Color(0xffe2e1e1)),
                                  padding: EdgeInsets.only(
                                      top: deviceSize.height * 0.06),
                                  child: Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          gradient: const LinearGradient(
                                            begin: Alignment.topCenter,
                                            end: Alignment.bottomCenter,
                                            colors: [
                                              Color(0xff81dfc2),
                                              Color(0x6b87d174)
                                            ],
                                          ))),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      top: deviceSize.height * 0.003),
                                  child: Text("Normal",
                                      style: TextStyle(
                                        fontSize: deviceSize.height * 0.008,
                                        fontWeight: FontWeight.w600,
                                      )),
                                )
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: deviceSize.height * 0.03,
          ),
          Container(
            width: deviceSize.width * 0.70,
            height: deviceSize.height * 0.06,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                gradient: const LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Color(0xff67d694), Color(0x9b34d374)],
                )),
            alignment: Alignment.center,
            child: Text("Save",
                style: TextStyle(
                    fontSize: deviceSize.height * 0.02,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff1a382a))),
          )
        ],
      ),
    );
  }
}
