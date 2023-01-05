import 'package:flutter/material.dart';
import 'package:learning/page/home/main_home.dart';
import 'package:learning/widgets/bigText.dart';
import 'package:learning/widgets/smallText.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

// Future<Commments> fetchComment() async {
//   final response = await http.get(Uri.parse("//jsonplaceholder.typicode.com/comments"));

//   if(response.statusCode == 200){
//     return 
//   }
// }
class messagesPage extends StatefulWidget {
  const messagesPage({Key? key}) : super(key: key);

  @override
  _MessagesPageState createState() => _MessagesPageState();
}

class _MessagesPageState extends State<messagesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new_outlined),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => MainHomeClothes()));
          },
        ),
        title: bigText(text: "Back", color: Color.fromARGB(255, 11, 32, 68),),
      ),
      body: Container(
        child: Row(
          children: [
            textSmall(text: "testing")
          ],
        ),
      ),
    );
  }
}