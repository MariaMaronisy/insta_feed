import 'package:flutter/material.dart';

import 'package:insta_feed/DastanHishyar/messagewidget.dart';

class MessagesPage extends StatelessWidget {
  MessagesPage({super.key});
  static const id = '/messages';

  List messageItems = [
    {
      "pseudo": 'sarah',
      "photoProfile": "images/woman2.jpg",
      "message":
          "🤩😱 Loock amazing,contact with different people, what do you like to see ?",
      "time": "Sent 14 min ago"
    },
    {
      "pseudo": 'sam',
      "photoProfile": "images/man.jpg",
      "message":
          "🤩🤩 good food,contact with different people, contact with different people",
      "time": "Sent 4h ago"
    },
    {
      "pseudo": 'nick',
      "photoProfile": "images/man1.jpg",
      "message": "😩 good food, contact with different people",
      "time": "sent 4h ago"
    },
    {
      "pseudo": 'sammy',
      "photoProfile": "images/woman.jpg",
      "message": "😭😩 bad and irregular food, contact with different people",
      "time": "😭😩"
    },
    {
      "pseudo": 'sky',
      "photoProfile": "images/spacepost.jpg",
      "message": "what a beautiful day <3",
      "time": "Sent 4h ago"
    },
    {
      "pseudo": 'jake',
      "photoProfile": "images/skate.jpg",
      "message": "how you been?",
      "time": "sent 3h ago"
    },
    {
      "pseudo": 'holly',
      "photoProfile": "images/vibes.jpg",
      "message": "how you been?",
      "time": "how you been?"
    },
    {
      "pseudo": 'alley',
      "photoProfile": "images/water.jpg",
      "message": "how you been?",
      "time": "sent 2h ago"
    },
    {
      "pseudo": 'mike',
      "photoProfile": "images/football.jpg",
      "message": "how you been?",
      "time": "sent 6h ago"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          iconTheme: const IconThemeData(
            color: Colors.black, //change your color here
          ),
          automaticallyImplyLeading: false,
          titleSpacing: 0,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.arrow_back_ios_outlined)),
              Text(
                messageItems[0]['pseudo'],
                style: const TextStyle(color: Colors.black, fontSize: 15),
              ),
            ],
          ),
          backgroundColor: Colors.white,
          elevation: 0,
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.video_call_outlined,
                size: 30,
              ),
            ),
            const SizedBox(
              width: 5,
            ),
            const SizedBox(
              width: 5,
            ),
          ]),
      body: SingleChildScrollView(
          child: Column(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            child: TextFormField(
              cursorColor: Colors.grey.shade600,
              textAlignVertical: TextAlignVertical.center,
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.symmetric(vertical: 0),
                isDense: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide.none,
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                filled: true,
                fillColor: const Color.fromRGBO(239, 239, 239, 1),
                focusColor: Colors.white,
                hintText: 'Search',
                hintStyle: const TextStyle(color: Colors.grey),
                prefixIcon: const Icon(
                  Icons.search,
                  color: Colors.grey,
                  size: 20,
                ),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Messages',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                TextButton(onPressed: () {}, child: const Text('Requests(3)'))
              ],
            ),
          ),
          Column(
            children: messageItems.map((message) {
              return GestureDetector(
                onTap: () {},
                child: MessageWidget(
                  pseudo: message['pseudo'],
                  image: message['photoProfile'],
                  message: message['time'],
                ),
              );
            }).toList(),
          )
        ],
      )),
    );
  }
}
