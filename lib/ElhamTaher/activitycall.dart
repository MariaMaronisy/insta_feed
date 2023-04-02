import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:insta_feed/ElhamTaher/activityfollow.dart';
import 'package:insta_feed/ElhamTaher/activitylike.dart';
import 'package:insta_feed/ElhamTaher/data.dart';

class Notefication extends StatelessWidget {
  const Notefication({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: Row(children: [
            Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
            SizedBox(width: 10),
            Text("Notifications",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                    color: Colors.black))
          ])),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 5),
            Row(
              children: [
                Image.asset(
                  "assets/avatar.png",
                  width: 50,
                  height: 50,
                ),
                const SizedBox(width: 10),
                Column(
                  children: [
                    Text(" Follow requests",
                        style: TextStyle(fontSize: 18, color: Colors.black)),
                    Text("Approve or ignore requests",
                        style:
                            TextStyle(fontSize: 9, fontWeight: FontWeight.w500))
                  ],
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Text("Today",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600)),
            Container(height: 300, child: ActivityLike()),
            Container(height: 200, child: ActivityFollow()),
            Text("Yesterday",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600)),
            Container(height: 300, child: ActivityLike()),
            Container(height: 200, child: ActivityFollow()),
          ],
        ),
      ),
    );
  }
}
