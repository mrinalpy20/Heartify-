import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/homecard.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_swipe_detector/flutter_swipe_detector.dart';

import '../models/resultdata.dart';

class ResultsPage extends StatefulWidget {
  final ResultData? resultData;
  const ResultsPage({super.key, required this.resultData});
  @override
  _ResultsPageState createState() => _ResultsPageState(resultData: resultData);
}

class _ResultsPageState extends State<ResultsPage> {
  final ResultData? resultData;
  _ResultsPageState({required this.resultData});

  @override
  Widget build(BuildContext context) {
    var deviceSize = MediaQuery.of(context).size;
    int prediction = resultData?.prediction ?? 0;
    int chol = resultData?.chol ?? 200;
    int trestbps = resultData?.trestbps ?? 120;
    int thalch = resultData?.thalch ?? 100;
    double oldpeak = resultData?.oldpeak ?? 0.5;

    double trestbpsLevel = trestbps <= 300 ? (300 - trestbps) / 300 : 0;
    double cholLevel = chol <= 400 ? (400 - chol) / 400 : 0;
    double thalchLevel = thalch <= 250 ? (250 - thalch) / 250 : 0;
    double oldpeakLevel = oldpeak <= 2.5 ? (2.5 - oldpeak) / 2.5 : 0;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
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
                    child: (prediction < 0)
                        ? Text("13%",
                            style: TextStyle(
                              color: Color(0xb7193527).withOpacity(.77),
                              fontSize: deviceSize.width * 0.18,
                              fontFamily: "Inria Sans",
                              fontWeight: FontWeight.w600,
                            ))
                        : Text("87%",
                            style: TextStyle(
                              color: Color(0xb7193527).withOpacity(.77),
                              fontSize: deviceSize.width * 0.18,
                              fontFamily: "Inria Sans",
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
                      child: Padding(
                        padding: EdgeInsets.only(left: 25, right: 25),
                        child: (prediction < 0)
                            ? const Text(
                                "Seems like you are quite safe ! we recommend you to look for parameters which are above the normal line",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 252, 252, 252),
                                    fontSize: 12),
                              )
                            : const Text(
                                "Seems like you might have a disease!  We recommend you to look for parameters which are above the normal line ",
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
                          padding:
                              EdgeInsets.only(top: deviceSize.height * 0.01),
                          child: Text("Trestbps",
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
                                        top: deviceSize.height *
                                            0.12 *
                                            trestbpsLevel),
                                    child: (trestbps <= 120)
                                        ? Container(
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
                                                )))
                                        : Container(
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(15),
                                                gradient: const LinearGradient(
                                                  begin: Alignment.topCenter,
                                                  end: Alignment.bottomCenter,
                                                  colors: [
                                                    Color(0xffCA5D5D),
                                                    Color(0xffE96969)
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
                                        top: deviceSize.height *
                                            0.12 *
                                            (180 / 300)),
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
                          padding:
                              EdgeInsets.only(top: deviceSize.height * 0.01),
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
                                        top: deviceSize.height *
                                            0.12 *
                                            cholLevel),
                                    child: (chol <= 200)
                                        ? Container(
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
                                                )))
                                        : Container(
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(15),
                                                gradient: const LinearGradient(
                                                  begin: Alignment.topCenter,
                                                  end: Alignment.bottomCenter,
                                                  colors: [
                                                    Color(0xffCA5D5D),
                                                    Color(0xffE96969)
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
                                        top: deviceSize.height *
                                            0.12 *
                                            (200 / 400)),
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
                          padding:
                              EdgeInsets.only(top: deviceSize.height * 0.01),
                          child: Text("thalch",
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
                                        top: deviceSize.height *
                                            0.12 *
                                            thalchLevel),
                                    child: (thalch <= 100)
                                        ? Container(
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
                                                )))
                                        : Container(
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(15),
                                                gradient: const LinearGradient(
                                                  begin: Alignment.topCenter,
                                                  end: Alignment.bottomCenter,
                                                  colors: [
                                                    Color(0xffCA5D5D),
                                                    Color(0xffE96969)
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
                                        top: deviceSize.height *
                                            0.12 *
                                            (150 / 250)),
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
                          padding:
                              EdgeInsets.only(top: deviceSize.height * 0.01),
                          child: Text("Oldpeak",
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
                                        top: deviceSize.height *
                                            0.12 *
                                            oldpeakLevel),
                                    child: (oldpeak <= 0.5)
                                        ? Container(
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
                                                )))
                                        : Container(
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(15),
                                                gradient: const LinearGradient(
                                                  begin: Alignment.topCenter,
                                                  end: Alignment.bottomCenter,
                                                  colors: [
                                                    Color(0xffCA5D5D),
                                                    Color(0xffE96969)
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
                                        top: deviceSize.height *
                                            0.12 *
                                            (2 / 2.5)),
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
      ),
    );
  }
}
