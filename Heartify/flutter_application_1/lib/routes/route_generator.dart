import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/details.dart';
import 'package:flutter_application_1/pages/home.dart';
import 'package:flutter_application_1/pages/home2.dart';
import 'package:flutter_application_1/pages/home3.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // Getting arguments passed in while calling Navigator.pushNamed
    final args = settings.arguments;
    switch (settings.name) {
      case '/home1':
        return MaterialPageRoute(builder: (_) => HomePage());
      case '/details':
        return MaterialPageRoute(builder: (_) => DetailsPage());
      // case '/home2':
      //   return MaterialPageRoute(builder: (_) => HomePage2());
      // case '/home3':
      //   return MaterialPageRoute(builder: (_) => HomePage3());
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Error'),
        ),
        body: const Center(
          child: Text('ERROR'),
        ),
      );
    });
  }
}
