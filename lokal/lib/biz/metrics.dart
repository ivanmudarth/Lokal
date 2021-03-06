import 'package:flutter/material.dart';

class Metrics extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: getBody(),
    );
  }

  Widget getBody() {
    return ListView(
      children: [
        Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(5),
              child: Row(
                children: [
                  FittedBox(
                    fit: BoxFit.scaleDown,
                    child: SizedBox(
                      height: 40,
                      width: 40,
                      child: RaisedButton(
                        padding: const EdgeInsets.all(5.0),
                        child: Image.asset('assets/images/back.png'),
                        shape: StadiumBorder(),
                        color: Colors.white,
                        onPressed: () {},
                        elevation: 0,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Row(
                    children: [
                      RichText(
                        text: TextSpan(
                          text: "My Lokal+ ",
                          style: TextStyle(
                              fontSize: 20,
                              color: Color(0xff96BE4B),
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      RichText(
                        text: TextSpan(
                          text: "Analytics Dashboard",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ButtonTheme(
                    height: 60,
                    minWidth: 205,
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                          //borderRadius: BorderRadius.,
                          side: BorderSide(color: Colors.white)),
                      onPressed: () {},
                      elevation: 5,
                      color: Colors.white,
                      textColor: Color(0xff96BE4B),
                      child: Text("CURRENT", style: TextStyle(fontSize: 17)),
                    )),
                ButtonTheme(
                    height: 60,
                    minWidth: 205,
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                          //borderRadius: BorderRadius.,
                          side: BorderSide(color: Colors.white)),
                      onPressed: () {},
                      elevation: 5,
                      color: Colors.white,
                      textColor: Colors.grey,
                      child: Text("PAST", style: TextStyle(fontSize: 17)),
                    ))
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 550,
              height: 440,
              child: Image(image: AssetImage("assets/images/metrics.png")),
            ),
            Container(
              width: 550,
              height: 300,
              child: Image(image: AssetImage("assets/images/reviews.png")),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        )
      ],
    );
  }
}
