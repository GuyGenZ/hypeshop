import 'package:flutter/material.dart';
import 'package:hypeshop/home/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: "Prompt",
        highlightColor: Colors.transparent,
        splashColor: Colors.transparent,
      ),
      home: HomeScreen(),
    );
  }
}
