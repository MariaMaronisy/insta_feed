import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class postwidget extends StatelessWidget {
  postwidget({super.key});
  final List postItems = [
    {
      "name": 'bella_3',
      "photo": "images/water.jpg",
      "Profile": "images/woman2.jpg",
      "description": "the vibes today <3",
      "comments": "view all 80 comments ",
      "likes": "80k likes",
      "time": "1h ago"
    },
    {
      "name": 'sam',
      "photo": "images/skate.jpg",
      "Profile": "images/man.jpg",
      "description": " free therapy",
      "comments": "view all 100 comments ",
      "likes": "500k likes",
      "time": "12h ago"
    },
    {
      "name": 'Maru',
      "photo": "images/spacepost.jpg",
      "Profile": "images/woman.jpg",
      "description": "a pictrue that nasa posted",
      "comments": "view all 100 comments ",
      "likes": "189 likes",
      "time": "yesterday"
    },
    {
      "name": 'mark_m',
      "photo": "images/football.jpg",
      "Profile": "images/man1.jpg",
      "description": "what are your hobbies?",
      "comments": "view all 130 comments ",
      "likes": "120 likes",
      "time": "2/12/2022"
    },
    {
      "name": 'sarah',
      "photo": "images/vibes.jpg",
      "Profile": "images/woman.jpg",
      "description": "friends<3",
      "comments": "view all 130 comments ",
      "likes": "120k likes",
      "time": "1/1/2023"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: postItems.map((post) {
        return Column(
          children: [
            Container(
              height: 50,
              margin: const EdgeInsets.only(top: 10),
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 15,
                    backgroundColor: Colors.grey.shade300,
                    backgroundImage: AssetImage(post["Profile"]),
                  ),
                  const SizedBox(width: 10),
                  Text(
                    post["name"],
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 13),
                  ),
                  Expanded(child: Container()),
                  IconButton(
                      onPressed: () {}, icon: const Icon(Icons.more_horiz))
                ],
              ),
            ),
            Container(
              height: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(post["photo"]),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              height: 50,
              child: Row(
                children: [
                  Container(
                    width: 10,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.messenger_outline_rounded),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.send_outlined),
                  ),
                  Expanded(child: Container()),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.bookmark_outline),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const SizedBox(width: 0),
                      Text(
                        post["likes"],
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  const SizedBox(height: 5),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        post["name"],
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(width: 5),
                      Expanded(
                        child: Text(
                          post["description"],
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Text(
                    post["comments"],
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.grey.shade400),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        post["time"],
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey.shade400),
                      ),
                      const Text(
                        "   Translate",
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        );
      }).toList(),
    );
    ;
  }
}
