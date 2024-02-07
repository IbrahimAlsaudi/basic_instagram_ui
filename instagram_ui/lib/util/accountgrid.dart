import 'package:flutter/material.dart';

class AccountGrid extends StatelessWidget {
  const AccountGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 10,
      physics: NeverScrollableScrollPhysics(),
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(2.0),
          child: Container(
            // height: 120,
            color: Colors.deepPurple[300],
          ),
        );
      },
    );
  }
}
