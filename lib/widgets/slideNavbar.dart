import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:learning/widgets/bigText.dart';
import 'package:learning/widgets/smallText.dart';

class headerNavbar extends StatefulWidget {
  const headerNavbar({Key? key}) : super(key: key);

  @override
  _headerNavbarState createState() => _headerNavbarState();
}

class _headerNavbarState extends State<headerNavbar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.blue[900],
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage("assets/image/sepatu.png"))
      ),
      width: double.infinity,
      height: 200,
      padding: EdgeInsets.only(top: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children:[
              SizedBox(
                height: 15, width: 15,
                child: 
                  SvgPicture.asset("assets/svg/shoes.svg")
              ),
              bigText(text: "Shoes"),
              textSmall(text: "Finding"),
          ]),
        ],
      ),
    );
  }
}