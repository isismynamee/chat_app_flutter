import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:learning/class/Products/ProductsClass.dart';
import 'package:learning/page/navbar/Navbar.dart';
import 'package:learning/page/home/ProductsList/products.dart';
import 'package:learning/widgets/carouselHome.dart';
import 'package:learning/widgets/modalConfirm.dart';
import 'package:learning/widgets/ratingProducts.dart';

class DetailProduct extends StatelessWidget {
  
  final title;
  final description;
  final imageProducts;
  final category;
  final price;
  final itemCount;
  final rating;

  DetailProduct({
    Key? key,
    this.rating,
    required this.itemCount,
    required this.title,
    required this.description,
    required this.imageProducts,
    required this.category,
    required this.price
  });

  @override
  Widget build(BuildContext context) {
    bool _OpenModal = false;
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
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CarouselHome(imagePass: imageProducts, itemCount: itemCount,),
          Text(title, style: TextStyle(fontWeight: FontWeight.bold,)),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    RatingProducts(rating: rating),
                    Text(" $rating"),
                    GestureDetector(
                      onTap: () {
                        
                      },
                      child: ModalConfirm(
                        icon: Icons.help_outline_outlined,
                        body: Text("this data"),
                        title: Text("Delete Data"),
                        openModalConfirm: _OpenModal,
                      ),
                    )
                  ],
                ),
                GestureDetector(
                  child: Icon(Icons.add_shopping_cart_outlined),
                  onTap: (){
                    print("Add To Chart");
                  },
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            child: Text(description),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.symmetric(
          vertical: 5, 
          horizontal: 10
        ),
        child: ElevatedButton.icon(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.resolveWith((states) => 
                Colors.green,
              ),
            ),
            onPressed: (){},
            icon: Icon(Icons.shopping_cart_checkout_rounded,),
            label: Text("Add to Cart", ),
        ),
      ),
    );
  }
}

          