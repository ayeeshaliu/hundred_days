import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  final String ?title;
  final FontWeight ?fontWeight;
  final String ?family;
  final double ?size;
  final FontStyle ?fontStyle;
  final double ?letterSpacing;
  final Color ?color;

  MyText({this.title, this.fontWeight, this.family, this.size, this.fontStyle, this.letterSpacing, this.color});

  //const MyText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      "$title",
      style: TextStyle(
        fontWeight: fontWeight ?? FontWeight.w400,
        fontFamily: "$family",
        fontSize: size ?? 40,
        fontStyle: fontStyle ?? FontStyle.normal,
        letterSpacing: letterSpacing ?? 0.2,
        color: color?? Colors.white,
      ),
    );
  }
}


class Circles extends StatelessWidget {
  final double ?radius;
  final Color ?backgroundColor;
  final Widget ? child;
  //final String title;

  Circles({this.radius, this.backgroundColor, this.child});

  //const Circles({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radius ?? 45,
      backgroundColor: backgroundColor??  Colors.grey,
      child: child,

    );
  }
}

