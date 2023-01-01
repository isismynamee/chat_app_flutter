import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:learning/widgets/bigText.dart';
import 'package:learning/widgets/smallText.dart';

class bottomNavbar extends StatelessWidget {
  final IconData iconData;
  final String text;
  final VoidCallback onTap;
  final int notifCount;
  bottomNavbar({Key? key, required this.onTap, 
    required this.text, required this.iconData,
    required this.notifCount
    }): super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 100,
        padding: EdgeInsets.symmetric(horizontal: 8),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(this.iconData),
                Text(text, overflow: TextOverflow.ellipsis)
              ],
            ),
            Positioned(
              top: 4,
              right: 10,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 0),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.blueAccent
                ),
                alignment: Alignment.center,
                child: textSmall(text: '$notifCount', color: Colors.white,),
              ),
            )
          ],
        ),
      ),
    );
  }
}