import 'package:flutter/material.dart';
import 'package:learning/class/messagesClass.dart';
import 'package:learning/page/messages/messages.dart';
import 'package:learning/widgets/bigText.dart';
import 'package:learning/widgets/smallText.dart';

class DetailMessage extends StatelessWidget {
  final Comments comment;

  DetailMessage({required this.comment});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new_outlined, color: Colors.black),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => messagesPage()));
          },
        ),
        title:Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage("assets/image/maxresdefault.jpg"),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15), 
                  child: textSmall(text: comment.email),
                )
              ],
            ),
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(comment.body),
          ],
      ),
    );
  }
}