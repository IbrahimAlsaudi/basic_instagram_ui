import 'dart:math';

import 'package:flutter/material.dart';
import 'package:instagram_ui/util/posts.dart';
import 'package:instagram_ui/util/stories.dart';

class UserHome extends StatelessWidget {
  UserHome({super.key});
  final List people = [
    'user 1',
    'user 2',
    'user 3',
    'user 4',
    'user 5',
    'user 6',
    'user 7',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Instgram',
              style: TextStyle(color: Colors.white),
            ),
            Row(
              children: [
                Icon(Icons.favorite_outline),
                Padding(
                  padding: EdgeInsets.only(
                    left: 16,
                  ),
                  child: Icon(Icons.message_rounded),
                ),
              ],
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Container(
            height: 130,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: people.length,
              itemBuilder: (context, index) {
                return BubbleStories(userName: people[index]);
              },
            ),
          ),
          Expanded(
            child: ListView.builder(
              physics: BouncingScrollPhysics(),
              itemCount: people.length,
              itemBuilder: (context, index) {
                return UserPosts(
                    userName: people[Random().nextInt(people.length - 1)]);
              },
            ),
          ),
        ],
      ),
    );
  }
}
