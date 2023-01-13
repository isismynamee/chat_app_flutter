import 'package:flutter/material.dart';
import 'package:learning/page/navbar/Navbar.dart';
import 'package:learning/widgets/bigText.dart';

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
            Navigator.push(context, MaterialPageRoute(builder: (context) => NavbarDynamic()));
          },
        ),
        title: bigText(text: "Back", color: Color.fromARGB(255, 11, 32, 68),),
      ),
    );
  }
}