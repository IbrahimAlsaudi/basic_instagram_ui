import 'package:flutter/material.dart';

class AccountButtons extends StatelessWidget {
  const AccountButtons({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          elevation: 0,
          minimumSize: Size(170, 30), 
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          backgroundColor: Colors.grey[700],
        ),
        child: Text(text),
      ),
    );
  }
}
