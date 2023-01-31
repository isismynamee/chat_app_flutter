import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:learning/api/productsApi.dart';
import 'package:learning/class/Products/ProductsClass.dart';
import 'package:learning/widgets/ProductsList/detailProduct.dart';
import 'package:learning/widgets/bigText.dart';
import 'package:learning/widgets/card.dart';
import 'package:loadmore/loadmore.dart';

class productsList extends StatefulWidget {
  const productsList({Key? key}) : super(key: key);

  @override
  State<productsList> createState() => productsListState();
}

class productsListState extends State<productsList> {
  final ProductsApi _productsList = ProductsApi();
  List<int> listDataProducts = [];
  void load(){
    setState(() {
      listDataProducts.addAll(List.generate(5, (e) => e));
      print("total Data: ${listDataProducts.length}");
    });
  }
  Future<bool> _loadMore() async {
    await Future.delayed(Duration(seconds: 0, milliseconds: 2000));
    load();
    return true;
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: FutureBuilder<List<Products>>(
        builder: (BuildContext context, AsyncSnapshot<List<Products>> snapshot) {
          if(snapshot.hasError){
            return Center(
              child: Text("Error " + snapshot.stackTrace.toString()),
            );
          }
          if(snapshot.connectionState == ConnectionState.done){
            List<Products> products = snapshot.requireData;
            return ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) {
                return CardLists(
                  itemCount: snapshot.data!.length,
                  price: snapshot.data![index].price,
                  title: snapshot.data![index].title,
                  description: snapshot.data![index].description,
                  imageProducts: snapshot.data![index].imageProducts!,
                  category: snapshot.data![index].category,
                );
              },
            );
          }else{
            return Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircularProgressIndicator(),
                  Text('\nLoad Data')
                ],
              ),
            );
          }
        },
        future: _productsList.productsList(),
      ),
    );
  }
}