import 'package:flutter/material.dart';
import 'HomeApp.dart';

void main(List<String> args) => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Two Dice Roller',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColorDark: Color(0xFF000051)),
      home: HomeApp(),
    );
  }
}
