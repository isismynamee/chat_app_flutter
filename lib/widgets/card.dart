import 'package:flutter/material.dart';
import 'package:learning/page/home/ProductsList/detailProduct.dart';

class CardLists extends StatelessWidget {
  final title;
  final rating;
  final description;
  final imageProducts;
  final category;
  final price;
  final itemCount;
  
  CardLists({ 
    Key? key, 
    this.rating,
    this.itemCount,
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
                        price: price,
                        itemCount: itemCount,
                        category: category,
                        description: description,
                        imageProducts: imageProducts,
                      ),
                    ),
                  ),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: BorderSide(
            color: Colors.grey
          )
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.1,
                image: NetworkImage(imageProducts)
              ),
              Container(
                child: Text("$title - $category", maxLines: 1, overflow: TextOverflow.ellipsis, style: TextStyle(fontWeight: FontWeight.bold)),
              ),
              Container(
                child: Text(description, maxLines: 1, overflow: TextOverflow.ellipsis),
              ),
              Row(
                // mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Icon(
                    Icons.star,
                    color: Colors.orange,
                    size: 18,
                  ),
                  const SizedBox(width: 7),
                  Row(
                    children: [
                      Text("$rating - \$"+price),
                    ],
                  )
                ],
              ),
            ],
          ),
        )
      ),
    );
  }
}