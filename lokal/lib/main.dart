import 'package:flutter/material.dart';
// ignore: unused_import
import './biz/home.dart';
// ignore: unused_import
import './biz/metrics.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lokal App',
      theme: ThemeData(primarySwatch: Colors.blue, fontFamily: ""),
      home: BizHome(),
    ); // uncomment to display page
    // home: Metrics());
  }
}
