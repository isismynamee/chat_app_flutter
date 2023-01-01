import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:learning/utils/text_color.dart';

class CarouselHome extends StatefulWidget {
  const CarouselHome({Key? key}) : super(key: key);

  @override
  _CarouselHomeState createState() => _CarouselHomeState();
}

class _CarouselHomeState extends State<CarouselHome> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      color: TextColors.iconColors,
      margin: EdgeInsets.only(left: 10, right: 10),
      child: PageView.builder(
          itemCount: 7,
          itemBuilder: (context, position){
        return _buildPageItem(position);
      })
    );
  }
  Widget _buildPageItem(int index){
    return Stack(
      children: [
        Container(
      margin: EdgeInsets.only(bottom: 50),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: index.isEven ? Color(0xFF880E4F) : Color(0xFFE91E63),
        // image: DecorationImage(
        //   fit: BoxFit.fitWidth,
        //   image: AssetImage(
        //     "assets/image/orange_shirt.jpeg"
        //   )
        // )
      ),
    ),
      ],
    );
  }
}
