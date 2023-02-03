import 'package:flutter/cupertino.dart';
import 'package:learning/utils/text_color.dart';

class CarouselHome extends StatefulWidget {
  final imagePass;
  final itemCount;

  CarouselHome({
    Key? key,
    required this.itemCount,
    required this.imagePass,
  }): super(key: key);

  @override
  _CarouselHomeState createState() => _CarouselHomeState();
}

class _CarouselHomeState extends State<CarouselHome> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.5,
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: PageView.builder(
            itemCount: widget.itemCount,
            itemBuilder: (context, position){
          return _buildPageItem(position);
        }
      )
    );
  }
  Widget _buildPageItem(int index){
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: index.isEven ? Color.fromARGB(255, 255, 255, 255) : Color.fromARGB(255, 0, 0, 0),
            image: DecorationImage(
              fit: BoxFit.contain,
              image: NetworkImage(
                widget.imagePass
              )
            )
          ),
        ),
      ],
    );
  }
}
