import 'package:flutter/material.dart';
import 'package:learning/page/Add/addData.dart';
import 'package:learning/page/messages/messages.dart';
import 'package:learning/page/search/Search.dart';
import 'package:learning/widgets/bigText.dart';
import 'package:learning/widgets/notifIcon.dart';
import 'package:learning/widgets/slideNavbar.dart';
import 'package:learning/widgets/smallText.dart';

class MainHomeClothes extends StatefulWidget {
  const MainHomeClothes({Key? key}) : super(key: key);

  @override
  State<MainHomeClothes> createState() => _MainHomeClothesState();
}

class _MainHomeClothesState extends State<MainHomeClothes> {
  @override
  List pages = [
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
    return Scaffold(
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
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey[700],
          currentIndex: currentIndex,
          onTap: onTap,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home_outlined),label: "Home", backgroundColor: Colors.white),
            BottomNavigationBarItem(icon: Icon(Icons.search_outlined),label: "Search", backgroundColor: Colors.white),
            BottomNavigationBarItem(icon: Icon(Icons.mail_outline_outlined),label: "Message", backgroundColor: Colors.white),
            // BottomNavigationBarItem(icon: Icon(Icons.home_outlined),label: "Add", backgroundColor: Colors.white),
          ],
        )
    );
  }
}
