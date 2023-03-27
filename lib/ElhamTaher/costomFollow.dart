import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:insta_feed/ElhamTaher/data.dart';

class Costom extends StatefulWidget {
  const Costom({super.key});

  @override
  State<Costom> createState() => _CostomState();
}

class _CostomState extends State<Costom> {
  @override
  Widget build(BuildContext context) {
    return Row(children: [
  CircleAvatar(
    radius: 25,backgroundImage: const AssetImage("assets/abdullah.jpg"),
  ),

  const SizedBox(width: 15,),

   Column(
    mainAxisSize: MainAxisSize.min,
    children: [Text("Abdullah jaraAllah",style: TextStyle(fontWeight: FontWeight.w500),),

    const SizedBox(height: 5,),

    Text("New following you .h1",style: Theme.of(context).textTheme.subtitle1!,)
      ],
    ),

   Expanded(child: Padding(
   padding: const EdgeInsets.only(left: 50),
   child: ElevatedButton(onPressed: () {}, child: Text("Follow"))
          )
        )
      ],
    
    );
  }
}