import 'package:flutter/material.dart';
import 'package:instagram_ui/model/reels.dart';

class UserReels extends StatelessWidget {
  UserReels({super.key});
  final _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        scrollDirection: Axis.vertical,
        itemCount: reels.length,
        itemBuilder: (context, index) {
          return reels[index];
        },
      ),
    );
  }
}
