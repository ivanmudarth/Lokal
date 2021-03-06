import 'package:flutter/material.dart';
// ignore: unused_import
import './home.dart';
// ignore: unused_import
import './search.dart';
// ignore: unused_import
import './biz/home.dart';
// ignore: unused_import
import './biz/profile.dart';
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
      //home: HomePage(), // uncomment to display page
      //home: SearchPage(), // uncomment to display page
      //home: BizHome(),
      home: Metrics(),
    ); // uncomment to display page
    // home: Metrics());
  }
}
