import 'package:flutter/material.dart';

class BizHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE5E5E5),
      body: getBody(context),
    );
  }

  Widget getBody(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return ListView(
      children: [
        Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            SizedBox(
              height: 600,
              width: size.width,
              child: Container(
                decoration: BoxDecoration(
                    color: Color(0xffFFFFFF),
                    border: Border.all(color: Colors.grey, width: 3),
                    borderRadius:
                        BorderRadius.all(Radius.elliptical(300, 100))),
                child: Column(
                  children: [
                    SizedBox(
                      height: 75,
                    ),
                    Container(
                      width: 300,
                      height: 300,
                      child:
                          Image(image: AssetImage("assets/images/bizlogo.png")),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    RichText(
                      text: TextSpan(
                        text: "Mangi's Italiano",
                        style: TextStyle(
                            fontSize: 36,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        BigButton(text: "Settings", img: "settings"),
                        SizedBox(
                          width: 20,
                        ),
                        BigButton(text: "Edit Profile", img: "edit"),
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 70),
            SizedBox(height: 40),
          ],
        )
      ],
    );
  }

  // ignore: non_constant_identifier_names
  Widget CategoryButton({String text}) {
    return ButtonTheme(
        height: 40,
        child: RaisedButton(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18.0),
              side: BorderSide(color: Colors.white)),
          onPressed: () {},
          elevation: 5,
          color: Colors.white,
          textColor: Color(0xff96BE4B),
          child: Text(text, style: TextStyle(fontSize: 17)),
        ));
  }

  // ignore: non_constant_identifier_names
  Widget BigButton({String text, String img}) {
    return Column(
      children: [
        FittedBox(
          fit: BoxFit.scaleDown,
          child: SizedBox(
            height: 75,
            width: 75,
            child: RaisedButton(
              child: Image.asset('assets/images/$img.png'),
              shape: StadiumBorder(),
              color: Colors.white,
              onPressed: () {},
            ),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        RichText(
          text: TextSpan(
              text: text,
              style: TextStyle(
                fontSize: 25,
                color: Color(0xff868686),
              )),
        ),
      ],
    );
  }
}
