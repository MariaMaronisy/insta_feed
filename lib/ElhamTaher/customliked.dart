import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Customliked extends StatelessWidget {
  const Customliked({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      SizedBox(height: 100,
      width: 100,
      child: Stack(children:const [
        Padding(
          padding: EdgeInsets.only(left:10),
          child: CircleAvatar(radius: 25,backgroundImage: AssetImage("assets/ihsan.jpg"),),
        ),

         Positioned(bottom: 30,child: CircleAvatar(radius: 25,backgroundImage: AssetImage("assets/najwa.jpg"),))
  
           ],
        ),
      ),

      const SizedBox(width: 10,),

      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min
          ,children: [
          RichText(maxLines: 2,text: TextSpan(text: "Ihsan benalosh",style: TextStyle(fontSize:15,color: Colors.black,fontWeight: FontWeight.bold),
          children: [TextSpan(text: " and \n",style:TextStyle(fontSize:15,color: Colors.black,fontWeight: FontWeight.w300) ),

           const TextSpan(text: "najwa andalosy")
               ]
            )
        ),

        const SizedBox(height: 10,),
        Text("Liked your story. 30 min",style:TextStyle(fontSize:15,color: Colors.black,fontWeight: FontWeight.normal) ),
             ],
          ),
      ),

      Image.asset("assets/omar.jpg",height: 64,width: 64,),
      
      ],
    );
  }
}