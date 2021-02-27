import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: getBody(context),
    );
  }

  Widget getBody(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return ListView(
      children: [
        //SizedBox(),
        Container(
          width: size.width,
          child: Image(image: AssetImage("assets/images/store-front.png")),
        ),
        Column()
      ],
    );
  }
}
