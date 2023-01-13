import 'dart:async';

import 'package:flutter/material.dart';
import 'package:learning/page/navbar/Navbar.dart';
import 'package:learning/widgets/bigText.dart';
import 'package:learning/widgets/smallText.dart';

class splashScreen extends StatefulWidget {
  const splashScreen({Key? key}) : super(key: key);

  @override
  _splashScreenState createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {
  @override
  void initState(){
    super.initState();

    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => NavbarDynamic()));
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        width: MediaQuery.of(context).size.width,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/gif/shoes.gif",
                width: 100,
                height: 100,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  bigText(text: "Shoes"),
                  textSmall(text: "Finding")
            ],
              )
            ],
          ),
        ),
      ),
    );
  }
}