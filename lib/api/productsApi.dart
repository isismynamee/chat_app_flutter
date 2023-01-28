import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:learning/class/Products/ProductsClass.dart';

class ProductsApi {
  var data = [];
  List<Products> results = [];
  String urlProducts = "https://fakestoreapi.com/products";

  Future<List<Products>> productsList({String? query}) async {
    var url = Uri.parse(urlProducts);
    try {
      var response = await http.get(url);
      
      if(response.statusCode == 200){
        data = json.decode(response.body);
        results = data.map((e) => Products.fromJson(e)).toList();
        if(query != null) {
          results = results.where((element) => element.title!.toLowerCase().contains((query.toLowerCase()))).toList();
        }
      }else{
        print("something Error");
      }
    } on Exception catch (e) {
      print('error: $e');
    }
    return results;
  }
}