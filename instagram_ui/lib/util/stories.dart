import 'package:flutter/material.dart';

class BubbleStories extends StatelessWidget {
  const BubbleStories({super.key, required this.userName});
  final String userName;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8),
      child: Column(
        children: [
          CircleAvatar(
            backgroundColor: Colors.grey[400],
            radius: 35,
          ),
          SizedBox(
            height: 5,
          ),
          Text(userName),
        ],
      ),
    );
  }
}
