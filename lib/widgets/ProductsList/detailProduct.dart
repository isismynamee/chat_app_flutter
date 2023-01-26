import 'package:flutter/material.dart';
import 'package:learning/class/Products/ProductsClass.dart';

class DetailProduct extends StatelessWidget {
  final Products product;

  DetailProduct({required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text("test")
        ],
      ),
    );
  }
}