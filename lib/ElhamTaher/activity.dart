import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:insta_feed/ElhamTaher/data.dart';


class post extends StatelessWidget {
  const post({super.key});

  @override
  Widget build(BuildContext context) {
    return  ListView.builder(itemCount: userlist.length,itemBuilder: (context, index) {
      return ListView(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        children: [
          Container(color: Colors.white,width: 100,height: 100,child: Stack(children: [

            Positioned( top:20,left: 7,child: CircleAvatar(backgroundImage: AssetImage(userlist[index].follower1),radius: 25,)),
            Positioned(bottom:10,child: CircleAvatar(radius: 25,backgroundImage: AssetImage(userlist[index].follower2))),
            Positioned( right: 30,child: Image.asset(userlist[index].emg,height: 64,width: 64,),),
            Positioned( top:30,left: 80,child: Text(userlist[index].text,style: TextStyle( fontSize: 15,color: Color.fromARGB(255, 0, 5, 8),fontWeight: FontWeight.w500),)),
            Positioned( top:50,left: 80,child: Text(userlist[index].desc,style: TextStyle( fontSize: 11,color: Color.fromARGB(255, 0, 6, 10)),)),
            Positioned( top:70,left: 80,child: Text(userlist[index].time,style: TextStyle( fontSize: 11,color: Color.fromARGB(255, 0, 6, 10)),)),
           
          ]
          ),)
        ],
      );

    }
    
  ,);
  }
}