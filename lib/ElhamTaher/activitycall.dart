import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:insta_feed/ElhamTaher/activity.dart';
import 'package:insta_feed/ElhamTaher/costomFollow.dart';

class asasi extends StatelessWidget {
  const asasi({super.key});
  static const id = '/asasi';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 10,
        backgroundColor: Colors.white,
        title: Center(child: Text("")),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Row(
              children: [
                Icon(Icons.arrow_back),
                Text("Notifications",
                    style:
                        TextStyle(fontSize: 25, fontWeight: FontWeight.w500)),
              ],
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            children: [
              Image.asset(
                "assets/avatar.png",
                width: 50,
                height: 50,
              ),
              const SizedBox(
                width: 10,
              ),
              Column(
                children: [
                  Text(" Follow requests",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
                  Text("Approve or ignore requests",
                      style:
                          TextStyle(fontSize: 10, fontWeight: FontWeight.w500))
                ],
              )
            ],
          ),
          Container(height: 300, child: post()),
          Container(
            height: 100,
            child: Costom(),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Text("Today",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500)),
          ),
        ],
      ),
    );
  }
}
