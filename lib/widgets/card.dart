import 'package:flutter/material.dart';

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
    return Container(
      width: 100,
      child: Card(
        margin: EdgeInsets.symmetric(vertical: 10),
        child: Column(
          children: [
            Container(
              // width: MediaQuery.of(context).size.width,
              // height: MediaQuery.of(context).size.height * 0.35,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(imageProducts)
                )
              ),
            ),
            Container(
              width: 300,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(title, maxLines: 1, overflow: TextOverflow.ellipsis,),
                  Text(" - "),
                  Text(category, maxLines: 1, overflow: TextOverflow.ellipsis,),
                ],
              ),
            ),
            Container(
              child: Text(description, maxLines: 1, overflow: TextOverflow.ellipsis),
            ),
            // Text(price),
            Container(
              child: ElevatedButton(
                  onPressed: () {}, 
                  child: Text("Purchase"),
                )
            ),
          ],
        ),
      ),
    );
  }
}