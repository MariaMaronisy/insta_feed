import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:insta_feed/ElhamTaher/activitycall.dart';
import 'package:insta_feed/MariaNahmat/Message.dart';

import 'package:insta_feed/MariaNahmat/postwidget.dart';
import 'package:insta_feed/MariaNahmat/storywidget.dart';

class homescreen extends StatelessWidget {
  const homescreen({super.key});
  static const id = '/';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        titleSpacing: 0,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          children: [
            const SizedBox(
              width: 10,
            ),
            Image.asset(
              "images/Logo-Instagram.png",
              height: 60,
            )
          ],
        ),
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.send_outlined,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.pushNamed(context, MessagesPage.id);
            },
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(children: [storywidget(), postwidget()]),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        unselectedItemColor: Colors.grey.shade700,
        selectedItemColor: Colors.black,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.camera_alt_outlined,
              ),
              label: 'add photo'),
          BottomNavigationBarItem(
              icon: IconButton(
                  icon: const Icon(
                    Icons.favorite_outline,
                    color: Colors.black,
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, Notefication.id);
                  }),
              label: ' favorite'),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_outline,
            ),
            label: 'profile',
          ),
        ],
      ),
    );
    ;
  }
}
