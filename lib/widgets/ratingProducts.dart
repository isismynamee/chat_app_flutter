import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class RatingProducts extends StatelessWidget {
  final rating;

  const RatingProducts({
    Key? key, 
    this.rating
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RatingBar.builder(
      minRating: 1,
      maxRating: 5,
      initialRating: rating.toDouble(),
      allowHalfRating: true,
      itemSize: 20,
      itemBuilder: (context, _) => Icon(Icons.star, color: Colors.orange,), 
      onRatingUpdate: (rating){
      }
    );
  }
}