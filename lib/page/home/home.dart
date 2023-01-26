import 'package:flutter/material.dart';
import 'package:learning/widgets/ProductsList/products.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          ProductsList()
        ],
      ),
    );
  }
}