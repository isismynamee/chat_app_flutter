import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:learning/widgets/bigText.dart';
import 'package:learning/widgets/navbarBack.dart';
import 'package:learning/widgets/notifIcon.dart';
import 'package:learning/widgets/carouselHome.dart';
import 'package:learning/widgets/slideNavbar.dart';
import 'package:learning/widgets/smallText.dart';

class MainHomeClothes extends StatefulWidget {
  const MainHomeClothes({Key? key}) : super(key: key);

  @override
  State<MainHomeClothes> createState() => _MainHomeClothesState();
}

class _MainHomeClothesState extends State<MainHomeClothes> {
  @override
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
                // ListTile(
                //   leading: Icon(Icons.wallet_outlined),
                //   title: textSmall(text: "Your Balance"),
                //   onTap: () {
                    
                //   },
                // ),
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
        body: Column(
          children: [
            Container(
              child: Container(
                    margin: EdgeInsets.only(top: 15, left: 10, bottom: 15, right:10),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Row(
                                // mainAxisAlignment: MainAxisAlignment.space
                                children:[
                                  SizedBox(
                                    height: 15, width: 15,
                                    child: 
                                      SvgPicture.asset("assets/svg/shoes.svg")
                                  ),
                                  bigText(text: "Shoes", color: Color(0xFF311B92)),
                                  textSmall(text: "Finding"),
                              ]),
                            ],
                          ),
                        ]
                    )
                ),
            ),
            CarouselHome(),
          ]
        ),
        bottomNavigationBar: 
        GNav(
          iconSize: 18,
          gap: 0,
          tabBorderRadius: 0,
          backgroundColor: Colors.blueAccent[700]!,
          tabBackgroundColor: Colors.white,
          rippleColor: Colors.black,
          curve: Curves.easeInOutSine,
          hoverColor: Colors.grey[300]!,
          tabs: [
            GButton(
              icon: Icons.home_outlined,
              text: "Home",
            ),
            GButton(
              icon: Icons.search_outlined,
              text: "Search",
            ),
            GButton(
              icon: Icons.add_circle_outline_outlined,
              text: "Add",
            ),
            GButton(
              icon: Icons.mail_outline,
              text: "Messages",
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const navbarBack()));
              },
            ),
          ]
        ),
    );
  }
}
