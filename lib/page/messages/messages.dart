import 'package:flutter/material.dart';
import 'package:learning/api/messagesApi.dart';
import 'package:learning/class/messagesClass.dart';
import 'package:learning/page/home/main_home.dart';
import 'package:learning/page/messages/DetailMessages.dart';
import 'package:learning/widgets/bigText.dart';
import 'package:learning/widgets/smallText.dart';

class messagesPage extends StatelessWidget {
  final MessagesApi messagesApi = MessagesApi();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new_outlined, color: Colors.black,),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => MainHomeClothes()));
          },
        ),
        title: bigText(text: "Back", color: Color.fromARGB(255, 11, 32, 68),),
      ),
      body: FutureBuilder(
        future: messagesApi.getComments(),
        builder: (BuildContext context, AsyncSnapshot<List<Comments>> snapshot) {
          if(snapshot.hasData){
            List<Comments> comments = snapshot.requireData;
            return ListView(
              children: comments.map((Comments comments) => 
                ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage("assets/image/maxresdefault.jpg"),
                  ),
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                        bigText(text: comments.email, color: Color(0xDD000000),),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(comments.body, maxLines: 1, )
                          ],
                        ), 
                    ],
                  ),
                  // onLongPress: () => ,
                  onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => DetailMessage(
                        comment: comments,
                      ),
                    ),
                  ),
                ),
              ).toList()
            );
          }else{
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      )
    );
  }
}