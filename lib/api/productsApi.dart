import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:learning/class/Products/ProductsClass.dart';
import 'package:learning/page/home/ProductsList/products.dart';

class ProductsApi {
  int PageData = 5;
  void movePage(){
    PageData = PageData +1;
  }
  var data = [];
  List<Products> results = [];

  Future<List<Products>> productsList({String? query}) async {
    var url = Uri.parse('https://fakestoreapi.com/products?page=$PageData&limit=10');
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