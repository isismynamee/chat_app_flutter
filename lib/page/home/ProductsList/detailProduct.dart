import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:learning/page/navbar/Navbar.dart';
import 'package:learning/widgets/carouselHome.dart';
import 'package:learning/widgets/modal%20widgets/modalConfirm.dart';
import 'package:learning/widgets/modal%20widgets/standarModal.dart';
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

  bool showConfirm = false;

  void _openThis(BuildContext context){
    showDialog(
      context: context, 
      builder: (BuildContext data){
        return StandarModal(
          title: "Help", 
          message: "Product rating's from another user",
          closeModal: 
              TextButton(
                onPressed: () {
                  print("close");
                  Navigator.of(context).pop();
                },
                child: Text("Ok")
              )
        );
      }
    );
  }

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
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CarouselHome(imagePass: imageProducts, itemCount: itemCount,),
          Text(title, style: TextStyle(fontWeight: FontWeight.bold,)),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RatingProducts(rating: rating),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Text(rating.toString()),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            showConfirm = true;
                            showConfirm == true ? _openThis(context) : null ;
                          },
                          child: Padding(
                            padding: EdgeInsets.only(top: 5),
                            child: Icon(Icons.help_outline_outlined, size: 15,),
                          )
                        )
                      ],
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
            label: Text("Checkout", ),
        ),
      ),
    );
  }
}

          