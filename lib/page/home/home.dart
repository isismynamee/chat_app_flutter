import 'package:flutter/material.dart';
import 'package:learning/api/productsApi.dart';
import 'package:learning/class/Products/ProductsClass.dart';
import 'package:learning/widgets/ProductsList/products.dart';
import 'package:learning/widgets/card.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final ProductsApi _productsList = ProductsApi();
  @override
  Widget build(BuildContext context) {
    return Center(
      child: productsList(),
    );
  }
}