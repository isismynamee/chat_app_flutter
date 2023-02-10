import 'package:flutter/material.dart';
import 'package:learning/page/search/ProductsList/products.dart';

class SearchData extends StatefulWidget {
  const SearchData({super.key});

  @override
  State<SearchData> createState() => _SearchDataState();
}

class _SearchDataState extends State<SearchData> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: productsList()
    );
  }
}