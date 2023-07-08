import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_application_1/pages/home1.dart';
import 'package:flutter_application_1/pages/home2.dart';
import 'package:flutter_application_1/pages/home3.dart';
void main() {
  runApp(MaterialApp(
    home: Iphone14promax1Widget(),
    routes: {
      
      '/home1': (context) => Iphone14promax1Widget(),
      '/home2': (context) => Iphone14promax2Widget(),
      '/home3': (context) => Iphone14promax3Widget(),
},
  ));
}



        
// class homepage extends StatelessWidget {
  

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       Container(
//               width:430,
//               height: 932,
//               clipBehavior: Clip.antiAlias,
//               decoration: BoxDecoration(color: Colors.white),
//               child: Stack(
//                     children: [
//                         Positioned(
//                             left: 416,
//                             top: 887,
//                             child: Transform(
//                                 transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(1.57),
//                                 child: Container(
//                                     width: 21,
//                                     height: 21,
//                                     clipBehavior: Clip.antiAlias,
//                                     decoration: BoxDecoration(),
//                                     child: Stack(children: [
//                                     ,
//                                     ]),
//                                 ),
//                             ),
//                         ),
//                         Positioned(
//                             left: 29,
//                             top: 121,
//                             child: Container(
//                                 width: 372,
//                                 height: 624,
//                                 decoration: ShapeDecoration(
//                                     color: Color(0x99B2EDC4),
//                                     shape: RoundedRectangleBorder(
//                                         borderRadius: BorderRadius.circular(13),
//                                     ),
//                                     shadows: [
//                                         BoxShadow(
//                                             color: Color(0x3F000000),
//                                             blurRadius: 4,
//                                             offset: Offset(0, 4),
//                                             spreadRadius: 0,
//                                         )
//                                     ],
//                                 ),
//                             ),
//                         ),
//                         Positioned(
//                             left: 64,
//                             top: 775,
//                             child: Container(
//                                 width: 302,
//                                 height: 18,
//                                 decoration: ShapeDecoration(
//                                     color: Color(0xFFB2EDC4),
//                                     shape: RoundedRectangleBorder(
//                                         borderRadius: BorderRadius.circular(32),
//                                     ),
//                                 ),
//                             ),
//                         ),
//                         Positioned(
//                             left: 366,
//                             top: 887,
//                             child: Text(
//                                 'Skip',
//                                 style: TextStyle(
//                                     color: Color(0xFF122B1F),
//                                     fontSize: 15,
//                                     fontFamily: 'Inria Sans',
//                                     fontWeight: FontWeight.w700,
//                                 ),
//                             ),
//                         ),
//                         Positioned(
//                             left: 64,
//                             top: 775,
//                             child: Container(
//                                 width: 111,
//                                 height: 18,
//                                 decoration: ShapeDecoration(
//                                     color: Color(0xFF122B1F),
//                                     shape: RoundedRectangleBorder(
//                                         borderRadius: BorderRadius.circular(15),
//                                     ),
//                                 ),
//                             ),
//                         ),
//                         Positioned(
//                             left: 73,
//                             top: 187,
//                             child: SizedBox(
//                                 width: 181,
//                                 height: 154,
//                                 child: Text(
//                                     'Start your journey towards a healthier heart by predicting your disease risk.',
//                                     style: TextStyle(
//                                         color: Color(0xA8122B1F),
//                                         fontSize: 16,
//                                         fontFamily: 'Inter',
//                                         fontWeight: FontWeight.w600,
//                                         height: 24.94,
//                                     ),
//                                 ),
//                             ),
//                         ),
//                         Positioned(
//                             left: 36,
//                             top: 319,
//                             child: Container(
//                                 width: 345,
//                                 height: 362,
//                                 decoration: BoxDecoration(
//                                     image: DecorationImage(
//                                         image: NetworkImage("https://via.placeholder.com/345x362"),
//                                         fit: BoxFit.fill,
//                                     ),
//                                 ),
//                             ),
//                         ),
//                         Positioned(
//                             left: 137,
//                             top: 17,
//                             child: Container(
//                                 width: 53,
//                                 height: 57,
//                                 decoration: ShapeDecoration(
//                                     image: DecorationImage(
//                                         image: NetworkImage("https://via.placeholder.com/53x57"),
//                                         fit: BoxFit.fill,
//                                     ),
//                                     shape: OvalBorder(),
//                                 ),
//                             ),
//                         ),
//                         Positioned(
//                             left: 183,
//                             top: 30,
//                             child: Text(
//                                 'Heartify',
//                                 style: TextStyle(
//                                     color: Color(0xFF122B1F),
//                                     fontSize: 15,
//                                     fontFamily: 'Inria Sans',
//                                     fontWeight: FontWeight.w700,
//                                 ),
//                             ),
//                         ),
//                     ],
//                 ),
//               )

//     );
//   }
// }

// // class MyHomePage extends StatefulWidget {
// //   const MyHomePage({super.key, required this.title});

// //   // This widget is the home page of your application. It is stateful, meaning
// //   // that it has a State object (defined below) that contains fields that affect
// //   // how it looks.

// //   // This class is the configuration for the state. It holds the values (in this
// //   // case the title) provided by the parent (in this case the App widget) and
// //   // used by the build method of the State. Fields in a Widget subclass are
// //   // always marked "final".

// //   final String title;

// //   @override
// //   State<MyHomePage> createState() => _MyHomePageState();
// // }

// // class _MyHomePageState extends State<MyHomePage> {
// //   int _counter = 0;

// //   void _incrementCounter() {
// //     setState(() {
// //       // This call to setState tells the Flutter framework that something has
// //       // changed in this State, which causes it to rerun the build method below
// //       // so that the display can reflect the updated values. If we changed
// //       // _counter without calling setState(), then the build method would not be
// //       // called again, and so nothing would appear to happen.
// //       _counter++;
// //     });
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     // This method is rerun every time setState is called, for instance as done
// //     // by the _incrementCounter method above.
// //     //
// //     // The Flutter framework has been optimized to make rerunning build methods
// //     // fast, so that you can just rebuild anything that needs updating rather
// //     // than having to individually change instances of widgets.
// //     return Scaffold(
// //       appBar: AppBar(
// //         // TRY THIS: Try changing the color here to a specific color (to
// //         // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
// //         // change color while the other colors stay the same.
// //         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
// //         // Here we take the value from the MyHomePage object that was created by
// //         // the App.build method, and use it to set our appbar title.
// //         title: Text(widget.title),
// //       ),
// //       body: Center(
// //         // Center is a layout widget. It takes a single child and positions it
// //         // in the middle of the parent.
// //         child: Column(
// //           // Column is also a layout widget. It takes a list of children and
// //           // arranges them vertically. By default, it sizes itself to fit its
// //           // children horizontally, and tries to be as tall as its parent.
// //           //
// //           // Column has various properties to control how it sizes itself and
// //           // how it positions its children. Here we use mainAxisAlignment to
// //           // center the children vertically; the main axis here is the vertical
// //           // axis because Columns are vertical (the cross axis would be
// //           // horizontal).
// //           //
// //           // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
// //           // action in the IDE, or press "p" in the console), to see the
// //           // wireframe for each widget.
// //           mainAxisAlignment: MainAxisAlignment.center,
// //           children: <Widget>[
// //             const Text(
// //               'You have pushed the button this many times:',
// //             ),
// //             Text(
// //               '$_counter',
// //               style: Theme.of(context).textTheme.headlineMedium,
// //             ),
// //           ],
// //         ),
// //       ),
// //       floatingActionButton: FloatingActionButton(
// //         onPressed: _incrementCounter,
// //         tooltip: 'Increment',
// //         child: const Icon(Icons.add),
// //       ), // This trailing comma makes auto-formatting nicer for build methods.
// //     );
// //   }
// // }
