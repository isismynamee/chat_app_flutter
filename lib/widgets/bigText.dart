import 'package:flutter/material.dart';

class bigText extends StatelessWidget {
  Color? color;
  final String text;
  double size;
  TextOverflow overflow;
  bigText({Key? key, this.color = const Color(0xFF00BCD4),
    required this.text, this.size=25,
    this.overflow=TextOverflow.fade
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      overflow: overflow,
      style: TextStyle(
        fontSize: 13,
        color: color,
        fontWeight: FontWeight.w900
      ),


    );
  }
}
