import 'package:flutter/material.dart';
// ignore: unused_import
import './home.dart';
import './search.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lokal App',
      theme: ThemeData(
          primarySwatch: Colors.blue, fontFamily: ""), // SF Pro Display
      //home: HomePage(), // uncomment to display page
      home: SearchPage(),
    );
  }
}
