import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:learning/api/productsApi.dart';
import 'package:learning/class/Products/ProductsClass.dart';
import 'package:learning/widgets/ProductsList/detailProduct.dart';
import 'package:learning/widgets/bigText.dart';
import 'package:learning/widgets/card.dart';

class productsList extends StatefulWidget {
  const productsList({Key? key}) : super(key: key);

  @override
  State<productsList> createState() => productsListState();
}

class productsListState extends State<productsList> {
  final ProductsApi _productsList = ProductsApi();
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
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                return CardLists(
                  // price: snapshot.data![index].price,
                  title: snapshot.data![index].title,
                  description: snapshot.data![index].description,
                  imageProducts: snapshot.data![index].imageProducts!,
                  category: snapshot.data![index].category,
                );
              },
            );
          }else{
            return Container(
              child: Center(
                child: CircularProgressIndicator(),
              ),
            );
          }
        },
        future: _productsList.productsList(),
      ),
    );
  }
}