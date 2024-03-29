import 'package:flutter/material.dart';
import 'package:instagram_ui/homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
        // theme: ThemeData(primarySwatch: Colors.grey),
        theme: ThemeData(brightness: Brightness.dark));
  }
}
