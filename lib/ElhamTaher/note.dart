import 'dart:typed_data';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Activity extends StatelessWidget {
  const Activity({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(elevation: 0,backgroundColor: Colors.transparent,
     title:Text("Notifications",style: TextStyle(fontSize:25,color: Colors.black),) ,),
     );
    
  }
}