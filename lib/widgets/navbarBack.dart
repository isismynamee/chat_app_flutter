import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learning/home/main_home.dart';
import 'package:learning/widgets/bigText.dart';
import 'package:learning/widgets/smallText.dart';

class navbarBack extends StatefulWidget {
  const navbarBack({Key? key}) : super(key: key);

  @override
  _NavbarBack createState() => _NavbarBack();
}

class _NavbarBack extends State<navbarBack> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new_outlined),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => MainHomeClothes()));
          },
        ),
        title: bigText(text: "Back", color: Color.fromARGB(255, 11, 32, 68),),
      ),
    );
  }
}