import 'package:floor_search/view/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "floorSearch",
      theme: ThemeData.dark(),
      home: HomeScreen(),
    );
  }
}
