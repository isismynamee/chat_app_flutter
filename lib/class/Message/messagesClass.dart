import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class Comments{
  final String name;
  final String email;
  final String body;

  Comments({
    required this.name,
    required this.email,
    required this.body
  });

  factory Comments.fromJson(Map<String, dynamic> json){
    return Comments(
      name: json['name'] as String,
      email: json['email'] as String,
      body: json['body'] as String
    );
  }
}

