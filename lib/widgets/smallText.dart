import 'package:flutter/material.dart';

class textSmall extends StatelessWidget {

  Color? color;
  double size;
  final String text;
  TextOverflow Overflow;

  textSmall({Key? key, this.color = const Color(0xFFBF360C),
    required this.text, this.size=15,
    this.Overflow = TextOverflow.ellipsis
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      overflow: Overflow,
      style: TextStyle(
        fontSize: 13,
        color: color,
        fontWeight: FontWeight.normal
      )
    );
  }
}
