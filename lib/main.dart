import 'package:flutter/material.dart';
import 'package:insta_feed/ElhamTaher/activitycall.dart';
import 'package:insta_feed/ElhamTaher/data.dart';
import 'package:insta_feed/MariaNahmat/Message.dart';

import 'package:insta_feed/MariaNahmat/homescreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const homescreen(),
        MessagesPage.id: (context) => MessagesPage(),
        '/notification': (context) => const Notefication(),
      },
    );
  }
}
