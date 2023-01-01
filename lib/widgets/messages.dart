import 'package:flutter/cupertino.dart';

class messages extends StatefulWidget {
  const messages({Key? key}) : super(key: key);

  @override
  _MessageState createState() => _MessageState();
}

class _MessageState extends State<messages> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("Di Message")
    );
  }
}