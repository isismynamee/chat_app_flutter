import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:learning/widgets/bigText.dart';
import 'package:learning/widgets/smallText.dart';

class notifIcon extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final int notifCount;
  notifIcon({Key? key, required this.onTap, 
    required this.text,
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
                Icon(this.notifCount >= 1 ? Icons.notifications_on_outlined : Icons.notifications_outlined),
                Text(text, overflow: TextOverflow.ellipsis)
              ],
            ),
            Positioned(
              top: 5,
              right: 23,
              child: Container(
                width: 5,
                padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                ),
                alignment: Alignment.center,
                child: this.notifCount >=1 ? textSmall(text: '$notifCount', color: Colors.white,) : null
              ),
            )
          ],
        ),
      ),
    );
  }
}