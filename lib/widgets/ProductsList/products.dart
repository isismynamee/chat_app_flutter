import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:learning/api/productsApi.dart';
import 'package:learning/class/Products/ProductsClass.dart';
import 'package:learning/widgets/ProductsList/detailProduct.dart';
import 'package:learning/widgets/bigText.dart';

class ProductsList extends StatelessWidget {
  final ProductsApi productsApi = ProductsApi();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FutureBuilder(
        future: productsApi.getProducts(),
        builder: (BuildContext context, AsyncSnapshot<List<Products>> snapshot) {
          if(snapshot.hasData){
            List<Products> products = snapshot.requireData;
            log('${products}');
            return ListView(
              children: products.map((Products products) => 
                ListTile(
                  // leading: CircleAvatar(
                  //   backgroundImage: NetworkImage(products.imageProducts),
                  // ),
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                        bigText(text: products.title, color: Color(0xDD000000),),
                        // Container(
                        //     child: Text(products.description, maxLines: 1, overflow: TextOverflow.ellipsis,)
                        // ), 
                    ],
                  ),
                  onTap:() => Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => DetailProduct(
                        product: products,
                      ),
                    ),
                  ),
                ),
              ).toList()
            );
          }else{
            return Container(
              width: MediaQuery.of(context).size.width,
              child: Center(
                child: CircularProgressIndicator(),
              ),
            );
          }
        },
      ),
    );
  }
}