import 'package:flutter/material.dart';

class UserPosts extends StatelessWidget {
  const UserPosts({super.key, required this.userName});
  final String userName;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(6.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.grey[400],
                    radius: 20,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    userName,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Icon(Icons.menu_rounded),
            ],
          ),
        ),
        Container(
          height: 400,
          color: const Color.fromRGBO(224, 224, 224, 1),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(Icons.chat_bubble_outline_rounded),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5.0),
                    child: Icon(Icons.arrow_outward_sharp),
                  ),
                  Icon(Icons.bookmark_border_outlined),
                ],
              ),
              Icon(Icons.favorite_border),
            ],
          ),
        ),
        Row(
          children: [
            SizedBox(
              width: 16,
            ),
            Text('Liked by '),
            Text(
              '3wess__ ',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text('and '),
            Text(
              'instagram',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.only(left: 16, top: 8),
          child: RichText(
            text: TextSpan(
              style: TextStyle(color: Colors.black),
              children: [
                TextSpan(
                  text: 'user4 ',
                  style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),
                ),
                TextSpan(
                    text:
                        "Well, Thats a nice caption for you, imagne anything you want",style: TextStyle(color: Colors.white)),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
