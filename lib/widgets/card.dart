import 'package:flutter/material.dart';
import 'package:learning/widgets/ProductsList/detailProduct.dart';

class CardLists extends StatelessWidget {
  final title;
  final description;
  final imageProducts;
  final category;
  final price;
  
  CardLists({ 
    Key? key, 
    this.title, 
    this.description, 
    this.category,
    this.imageProducts,
    this.price
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => DetailProduct(
                        title: title,
                        category: category,
                        description: description,
                        imageProducts: imageProducts,
                      ),
                    ),
                  ),
      child: Card(
        // color: Colors.blueGrey[50],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: BorderSide(
            color: Colors.black
          )
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Column(
            children: [
              Image(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.1,
                image: NetworkImage(imageProducts)
              ),
              Container(
                child: Text(title, maxLines: 1, overflow: TextOverflow.ellipsis, style: TextStyle(fontWeight: FontWeight.bold)),
              ),
              Text(price),
              Container(
                child: Text('Category: $category', maxLines: 1, overflow: TextOverflow.ellipsis,),
                margin: EdgeInsets.only(bottom: 10),
              ),
              Container(
                child: Text(description, maxLines: 1, overflow: TextOverflow.ellipsis),
                margin: EdgeInsets.only(bottom: 10),
              ),
            ],
          ),
        )
      ),
    );
  }
}