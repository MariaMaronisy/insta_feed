import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:insta_feed/ElhamTaher/data.dart';

class ActivityFollow extends StatelessWidget {
  const ActivityFollow({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: followlist.length,
      itemBuilder: (context, index) {
        return ListView(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          children: [
            Container(
              color: Colors.white,
              width: 100,
              height: 100,
              child: Stack(
                children: [
                  Positioned(
                      top: 20,
                      left: 7,
                      child: CircleAvatar(
                        backgroundImage: AssetImage(followlist[index].follower),
                        radius: 25,
                      )),
                  Positioned(
                      top: 35,
                      left: 80,
                      child: Text(
                        followlist[index].text,
                        style: TextStyle(
                            fontSize: 15,
                            color: Color.fromARGB(255, 0, 5, 8),
                            fontWeight: FontWeight.w600),
                      )),
                  Positioned(
                      top: 50,
                      left: 80,
                      child: Text(
                        "Started following you ",
                        style: TextStyle(
                            fontSize: 11,
                            color: Color.fromARGB(255, 60, 61, 61)),
                      )),
                  Positioned(
                      top: 70,
                      left: 80,
                      child: Text(
                        followlist[index].time,
                        style: TextStyle(
                            fontSize: 11,
                            color: Color.fromARGB(255, 108, 110, 111)),
                      )),
                  Positioned(
                      top: 30,
                      right: 20,
                      child: ElevatedButton(
                          onPressed: () {}, child: Text("Follow")))
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
