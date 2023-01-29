import 'package:flutter/material.dart';
import 'package:learning/class/Products/ProductsClass.dart';
import 'package:learning/page/navbar/Navbar.dart';
import 'package:learning/widgets/ProductsList/products.dart';
import 'package:learning/widgets/carouselHome.dart';

class DetailProduct extends StatelessWidget {
  
  final title;
  final description;
  final imageProducts;
  final category;
  // final price;

  DetailProduct({
    Key? key,
    required this.title,
    required this.description,
    required this.imageProducts,
    required this.category,
    // required this.price
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new_outlined, color: Colors.black),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => NavbarDynamic()));
          },
        ),
      ),
      body: Column(
        children: [
          CarouselHome(imagePass: imageProducts),
          Text(title)
        ],
      ),
    );
  }
}