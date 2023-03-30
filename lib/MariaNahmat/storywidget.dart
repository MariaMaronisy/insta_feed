import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class storywidget extends StatelessWidget {
  storywidget({super.key});
  final List storyitems = [
    {
      "name": 'your story',
      "photo": "images/woman.jpg",
    },
    {
      "name": 'sam',
      "photo": "images/man.jpg",
    },
    {
      "name": 'Maru',
      "photo": "images/woman1.jpg",
    },
    {
      "name": 'mark_m',
      "photo": "images/man1.jpg",
    },
    {
      "name": 'bella_3',
      "photo": "images/woman2.jpg",
    },
    {
      "name": 'Nasa',
      "photo": "images/spacepost.jpg",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: storyitems.map((story) {
          return Container(
            margin: const EdgeInsets.symmetric(horizontal: 8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    CircleAvatar(
                      backgroundColor: Color.fromARGB(255, 198, 75, 66),
                      radius: 30,
                      child: CircleAvatar(
                        radius: 28,
                        backgroundImage: AssetImage(story['photo']),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Text(
                  story['name'],
                  maxLines: 1,
                  style: const TextStyle(fontSize: 12),
                ),
              ],
            ),
          );
        }).toList(),
      ),
    );
    ;
  }
}
