import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:learning/class/Products/ProductsClass.dart';

class ProductsApi {
  final String urlPlaceHolder = "https://fakestoreapi.com/products";

  Future<List<Products>> getProducts() async {
    Response res = await get(Uri.parse(urlPlaceHolder));
    print(res);
    
    if(res.statusCode == 200){
      List<dynamic> body = jsonDecode(res.body);

      List<Products> products = body.map(
        (dynamic item) => Products.fromJson(item),
      ).toList();
      return products;
    }else{
      throw Products.fromJson(json.decode(res.body));
    }
  }
}