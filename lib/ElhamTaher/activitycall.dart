import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:insta_feed/ElhamTaher/activityfollow.dart';
import 'package:insta_feed/ElhamTaher/activitylike.dart';
import 'package:insta_feed/ElhamTaher/data.dart';

class Notefication extends StatelessWidget {
  const Notefication({super.key});
  static const id = '/notification';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          iconTheme: const IconThemeData(
            color: Colors.black, //change your color here
          ),
          elevation: 0,
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          titleSpacing: 0,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.arrow_back_ios_outlined)),
              Text(
                'Notification',
                style: const TextStyle(color: Colors.black, fontSize: 20),
              ),
            ],
          )),
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
