import 'package:flutter/material.dart';
import 'package:news_app/views/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "News App",
      home: Home(),
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
    );
  }
}
