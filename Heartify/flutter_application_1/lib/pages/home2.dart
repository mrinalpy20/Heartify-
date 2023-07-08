import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Iphone14promax2Widget extends StatefulWidget {
        @override
        _Iphone14promax2WidgetState createState() => _Iphone14promax2WidgetState();
        }
        
        class _Iphone14promax2WidgetState extends State<Iphone14promax2Widget> {
        @override
        Widget build(BuildContext context) {
        // Figma Flutter Generator Iphone14promax2Widget - FRAME
        
        return Container(
      width: 430,
      height: 932,
      decoration: BoxDecoration(
          color : Color.fromRGBO(255, 255, 255, 1),
  ),
      child: Stack(
        children: <Widget>[
          Positioned(
        top: 887,
        left: 416,
        child: Container(
      width: 21,
      height: 21,
      decoration: BoxDecoration(
          color : Color.fromRGBO(255, 255, 255, 1),
  ),
      child: Stack(
        children: <Widget>[
          Positioned(
        top: 3.360001564025879,
        left: 3.360001564025879,
        child: SvgPicture.asset(
        'assets/images/vector3.svg',
        semanticsLabel: 'vector'
      )
      ),Positioned(
        top: 6.551995754241943,
        left: 6.426004409790039,
        child: SvgPicture.asset(
        'assets/images/vector2.svg',
        semanticsLabel: 'vector'
      )
      ),Positioned(
        top: 7.1399970054626465,
        left: 10.080000877380371,
        child: SvgPicture.asset(
        'assets/images/vector1.svg',
        semanticsLabel: 'vector'
      )
      ),
        ]
      )
    )
      ),Positioned(
        top: 121,
        left: 29,
        child: Container(
        width: 372,
        height: 624,
        decoration: BoxDecoration(
          borderRadius : BorderRadius.only(
            topLeft: Radius.circular(13),
            topRight: Radius.circular(13),
            bottomLeft: Radius.circular(13),
            bottomRight: Radius.circular(13),
          ),
      boxShadow : [BoxShadow(
          color: Color.fromRGBO(0, 0, 0, 0.25),
          offset: Offset(0,4),
          blurRadius: 4
      )],
      color : Color.fromRGBO(178, 237, 196, 0.6000000238418579),
  )
      )
      ),Positioned(
        top: 775,
        left: 64,
        child: Container(
        width: 302,
        height: 18,
        decoration: BoxDecoration(
          borderRadius : BorderRadius.only(
            topLeft: Radius.circular(32),
            topRight: Radius.circular(32),
            bottomLeft: Radius.circular(32),
            bottomRight: Radius.circular(32),
          ),
      color : Color.fromRGBO(178, 237, 196, 1),
  )
      )
      ),Positioned(
        top: 887,
        left: 366,
        child: Text('Skip', textAlign: TextAlign.left, style: TextStyle(
        color: Color.fromRGBO(18, 43, 31, 1),
        fontFamily: 'Inria Sans',
        fontSize: 15,
        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
        fontWeight: FontWeight.normal,
        height: 1
      ),)
      ),Positioned(
        top: 775,
        left: 64,
        child: Container(
        width: 193,
        height: 18,
        decoration: BoxDecoration(
          borderRadius : BorderRadius.only(
            topLeft: Radius.circular(15),
            topRight: Radius.circular(15),
            bottomLeft: Radius.circular(15),
            bottomRight: Radius.circular(15),
          ),
      color : Color.fromRGBO(18, 43, 31, 1),
  )
      )
      ),SizedBox(
        width: 186,
        child: Text(
            'Simply provide your heart test report details from the hospital to get personalized predictions.',
            style: TextStyle(
                color: Color(0xA8122B1F),
                fontSize: 16,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w600,
                height: 24.94,
            ),
        ),
    ),Positioned(
        top: 386,
        left: 38,
        child: Container(
        width: 354,
        height: 245,
        decoration: BoxDecoration(
          image : DecorationImage(
          image: AssetImage('assets/images/Rectangle21.png'),
          fit: BoxFit.fitWidth
      ),
  )
      )
      ),Positioned(
        top: 25,
        left: 127,
        child: Container(
        width: 71,
        height: 78,
        decoration: BoxDecoration(
          image : DecorationImage(
          image: AssetImage('assets/images/Ellipse1.png'),
          fit: BoxFit.fitWidth
      ),
      borderRadius : BorderRadius.all(Radius.elliptical(71, 78)),
  )
      )
      ),Positioned(
        top: 44,
        left: 190,
        child: Text('Heartify', textAlign: TextAlign.left, style: TextStyle(
        color: Color.fromRGBO(18, 43, 31, 1),
        fontFamily: 'Inria Sans',
        fontSize: 20,
        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
        fontWeight: FontWeight.normal,
        height: 1
      ),)
      ),
        ]
      )
    );
          }
        }
        