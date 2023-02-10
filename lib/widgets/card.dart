import 'package:flutter/material.dart';
import 'package:learning/page/search/ProductsList/detailProduct.dart';
import 'package:learning/widgets/ratingProducts.dart';

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
                        rating: rating,
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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.1,
                image: NetworkImage(imageProducts)
              ),
              Text("$title - $category", maxLines: 1, overflow: TextOverflow.ellipsis, style: TextStyle(fontWeight: FontWeight.bold)),
              Container(
                width: MediaQuery.of(context).size.width,
                child: Text("\$$price"),
              ),
              Container(
                child: RatingProducts(
                  rating: rating,
                )
              )
              // Row(
              //   children: [
              //     const Icon(
              //       Icons.star,
              //       color: Colors.orange,
              //       size: 18,
              //     ),
              //     const SizedBox(width: 7),
              //     Text(rating.toString())
              //   ],
              // ),
            ],
          ),
        )
      ),
    );
  }
}