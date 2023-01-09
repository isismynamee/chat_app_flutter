import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:learning/class/messagesClass.dart';

class MessagesApi {
  final String urlPlaceHolder = "https://jsonplaceholder.typicode.com/comments";

  Future<List<Comments>> getComments() async {
    Response res = await get(Uri.parse(urlPlaceHolder));
    
    if(res.statusCode == 200){
      List<dynamic> body = jsonDecode(res.body);

      List<Comments> comments = body.map(
        (dynamic item) => Comments.fromJson(item),
      ).toList();
      return comments;
    }else{
      throw CircularProgressIndicator();
    }
  }
}