import 'package:flutter/material.dart';
import 'package:learning/page/Add/addData.dart';
import 'package:learning/page/home/home.dart';
import 'package:learning/page/messages/messages.dart';
import 'package:learning/page/search/Search.dart';
import 'package:learning/widgets/bigText.dart';
import 'package:learning/widgets/notifIcon.dart';
import 'package:learning/widgets/slideNavbar.dart';
import 'package:learning/widgets/smallText.dart';

class NavbarDynamic extends StatefulWidget {
  const NavbarDynamic({Key? key}) : super(key: key);

  @override
  State<NavbarDynamic> createState() => _NavbarDynamicState();
}

class _NavbarDynamicState extends State<NavbarDynamic> {
  @override
  List pages = [
    Home(),
    SearchData(),
    AddData(),
    messagesPage(),
  ];
  int currentIndex = 0;
  void onTap(int index){
    setState(() {
      currentIndex = index;
    });
  }
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Column(
            children: [
              Row(
                children: <Widget>[
                  bigText(text: "Shoes", color: Color(0xFF311B92),),
                  textSmall(text: "Finding", color: Colors.white)
                ],
              )
            ],
          ),
          actions: [
            notifIcon(
              text: "Notifications",
              notifCount: 1,
              onTap: () {},
            )
          ]
        ),
        drawerEnableOpenDragGesture: true,
        drawer: Drawer(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const headerNavbar(),
                ListTile(
                  leading: Icon(Icons.perm_identity_outlined),
                  title: textSmall(text: "Profile"),
                  onTap: () {
                    
                  },
                ),
                ExpansionTile(
                  title: textSmall(text: "Your Balance"),
                  leading: Icon(Icons.wallet_outlined),
                  children: [
                    SizedBox(
                      child: ListTile(
                        leading: Icon(Icons.monetization_on_outlined),
                        title: textSmall(text: "4000"),
                        onTap: () {
                          
                        },
                      ),
                    )
                  ],
                ),
                ListTile(
                  leading: Icon(Icons.people_outline),
                  title: textSmall(text: "List Contact"),
                  onTap: () {
                    
                  },
                ),
                ListTile(
                  leading: Icon(Icons.shopping_cart_checkout_outlined),
                  title: textSmall(text: "CheckOut"),
                  onTap: () {
                    
                  },
                ),
                ListTile(
                  leading: Icon(Icons.settings_outlined),
                  title: textSmall(text: "Settings"),
                  onTap: () {
                    
                  },
                ),
              ],
            )
          ),
        ),
        body: pages[currentIndex],
        // backgroundColor: Colors.blueGrey[50],
        bottomNavigationBar: BottomAppBar(
          color: Colors.blue,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Stack(
                  children: [
                    IconButton(
                      onPressed: () {
                        onTap(0);
                      }, 
                      icon: Icon(
                        Icons.home_outlined, 
                        color: currentIndex == 0 ? Colors.white : Colors.black,
                        size: 25,
                      )
                    ),
                    Positioned(
                      child: Text(
                        textAlign: TextAlign.center,
                        "Home",
                        style: TextStyle(
                          fontSize: 10
                        ),
                      ),
                      bottom: 0,
                    )
                  ],
                ),
                IconButton(
                  onPressed: () {
                    onTap(1);
                  }, 
                  icon: Icon(
                    Icons.search_outlined, 
                    color: currentIndex == 1 ? Colors.white : Colors.black,
                    size: 25,
                  )
                ),
                IconButton(
                  onPressed: () {
                    onTap(2);
                  }, 
                  icon: Icon(
                    Icons.add_circle_outline, 
                    color: currentIndex == 2 ? Colors.white : Colors.black,
                    size: 25,
                  )
                ),
                IconButton(
                  onPressed: () {
                    onTap(3);
                  }, 
                  icon: Icon(
                    Icons.email_outlined, 
                    color: currentIndex == 3 ? Colors.white : Colors.black,
                    size: 25,
                  )
                ),
              ],
            ),
          )
        )
      )
    );
  }
}
