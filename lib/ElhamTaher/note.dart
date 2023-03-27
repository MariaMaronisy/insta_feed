import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:insta_feed/ElhamTaher/costomFollow.dart';
import 'package:insta_feed/ElhamTaher/customliked.dart';

class NOtification extends StatelessWidget {
  NOtification({super.key});
 List newItem = ["liked", "follow"];
 List todayItem = ["follow", "liked", "liked"];
 List oldesItem = ["follow"];
  @override
  Widget build(BuildContext context) {
    return Scaffold( appBar: AppBar(),
      body: Padding(padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [Text("Notifications",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500),),

        const SizedBox(height: 5,),

         ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: newItem.length,
                  itemBuilder: (context, index) {
                    return newItem[index] == "follow"
                        ?  Costom()
                        : Customliked();
                  },
                ),

                  Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    "today",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500)),
                    ),

                     ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: todayItem.length,
                  itemBuilder: (context, index) {
                    return todayItem[index] == "follow"
                        ?  Costom()
                        : Customliked();
                  },
                ),


                 Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Text(
                    "Yestrday",
                    style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500)
                  ),
                ),


              ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: oldesItem.length,
                  itemBuilder: (context, index) {
                    return oldesItem[index] == "follow"
                        ? Costom()
                        : Customliked();
                  },
                ),
      ],
      ),
      ),
    );

  }
}