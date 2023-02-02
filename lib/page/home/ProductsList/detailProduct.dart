import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:learning/class/Products/ProductsClass.dart';
import 'package:learning/page/navbar/Navbar.dart';
import 'package:learning/page/home/ProductsList/products.dart';
import 'package:learning/widgets/carouselHome.dart';

class DetailProduct extends StatelessWidget {
  
  final title;
  final description;
  final imageProducts;
  final category;
  final price;
  final itemCount;

  DetailProduct({
    Key? key,
    required this.itemCount,
    required this.title,
    required this.description,
    required this.imageProducts,
    required this.category,
    required this.price
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new_outlined, color: Colors.grey[200]),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => NavbarDynamic()));
          },
        ),
        title: Text("Back"),
      ),
      body: Column(
        children: [
          CarouselHome(imagePass: imageProducts, itemCount: itemCount,),
          Text(title, style: TextStyle(fontWeight: FontWeight.bold,)),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            child: Text(description),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                child: ElevatedButton.icon(
                    onPressed: (){},
                    icon: Icon(Icons.add_shopping_cart_rounded),
                    label: Text("Add to Cart"),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                child: ElevatedButton.icon(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.resolveWith((states) {
                        return Colors.black;
                      })
                    ),
                    onPressed: (){},
                    icon: Icon(Icons.add_shopping_cart_rounded),
                    label: Text("Add to Cart"),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}