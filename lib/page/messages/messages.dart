import 'package:flutter/material.dart';
import 'package:learning/api/messagesApi.dart';
import 'package:learning/class/Message/messagesClass.dart';
import 'package:learning/page/messages/DetailMessages.dart';
import 'package:learning/widgets/bigText.dart';

class messagesPage extends StatelessWidget {
  final MessagesApi messagesApi = MessagesApi();
  List<String> Navbar = ['Home', 'Search', 'Add', 'Messages'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                        Container(
                            child: Text(comments.body, maxLines: 1, overflow: TextOverflow.ellipsis,)
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
      ),
    );
  }
}