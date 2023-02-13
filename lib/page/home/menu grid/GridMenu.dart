import 'package:flutter/material.dart';
import 'package:learning/page/home/home.dart';
import 'package:learning/page/navbar/Navbar.dart';

class GridMenu extends StatefulWidget {

  const GridMenu({
    Key? key,
  }) : super (key:key);
  @override
  State<GridMenu> createState() => _GridMenuState();
}

class _GridMenuState extends State<GridMenu> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios_new_outlined, color: Colors.black),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => NavbarDynamic()));
            },
          ),
        )
      ),
    );
  }
}