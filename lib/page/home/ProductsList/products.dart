import 'package:flutter/material.dart';
import 'package:learning/api/productsApi.dart';
import 'package:learning/class/Products/ProductsClass.dart';
import 'package:learning/widgets/card.dart';

class productsList extends StatefulWidget {
  const productsList({
    Key? key,
  }) : super(key: key);

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
            return Padding(
              padding: EdgeInsets.all(5),
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 300,
                  childAspectRatio: 1,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10
                ),
                itemCount: snapshot.data!.length,
                itemBuilder: (BuildContext context, index) {
                  return CardLists(
                    rating: snapshot.data![index].rating?.rate,
                    category: snapshot.data![index].category,
                    price: snapshot.data![index].price,
                    imageProducts: snapshot.data![index].imageProducts,
                    description: snapshot.data![index].description,
                    title: snapshot.data![index].title,
                  );
                },
              )
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