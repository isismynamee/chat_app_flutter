import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class Products{
  final String title;
  final String price;
  final String category;
  final String description;
  final String imageProducts;

  Products({
    required this.title,
    required this.price,
    required this.category,
    required this.description,
    required this.imageProducts,
  });

  factory Products.fromJson(Map<String, dynamic> json){
    return Products(
      title: json['title'] as String,
      price: json['price'] as String,
      category: json['category'] as String,
      description: json['description'] as String,
      imageProducts: json['image']
    );
  }
}

