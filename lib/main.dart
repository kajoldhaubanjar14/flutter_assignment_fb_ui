import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:posts_assignment/screens/detailedPage.dart';
import 'package:posts_assignment/screens/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {"/detailedPage": (context) => DetailedPage()},
        home: HomePage());
  }
}
