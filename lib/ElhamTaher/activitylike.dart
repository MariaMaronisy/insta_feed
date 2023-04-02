import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:insta_feed/ElhamTaher/data.dart';

class ActivityLike extends StatelessWidget {
  const ActivityLike({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: activitylist.length,
        itemBuilder: (context, index) {
          return ListView(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            children: [
              Container(
                color: Colors.white,
                width: 100,
                height: 100,
                child: Stack(children: [
                  Positioned(
                      top: 20,
                      left: 7,
                      child: CircleAvatar(
                        backgroundImage:
                            AssetImage(activitylist[index].follower1),
                        radius: 25,
                      )),
                  Positioned(
                      bottom: 13,
                      left: 7,
                      child: CircleAvatar(
                          radius: 25,
                          backgroundImage:
                              AssetImage(activitylist[index].follower2))),
                  Positioned(
                    top: 20,
                    right: 5,
                    child: Image.asset(
                      activitylist[index].emg,
                      width: 60,
                      height: 60,
                    ),
                  ),
                  Positioned(
                      top: 30,
                      left: 80,
                      child: Text(
                        activitylist[index].text,
                        style: TextStyle(
                            fontSize: 13,
                            color: Color.fromARGB(255, 0, 5, 8),
                            fontWeight: FontWeight.w600),
                      )),
                  Positioned(
                      top: 50,
                      left: 80,
                      child: Text(
                        activitylist[index].desc,
                        style: TextStyle(
                            fontSize: 11,
                            color: Color.fromARGB(255, 54, 53, 53)),
                      )),
                  Positioned(
                      top: 70,
                      left: 80,
                      child: Text(
                        activitylist[index].time,
                        style: TextStyle(
                            fontSize: 11,
                            color: Color.fromARGB(255, 108, 110, 111)),
                      )),
                ]),
              )
            ],
          );
        });
  }
}
