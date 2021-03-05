import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

// ignore: must_be_immutable
class BizHome extends StatefulWidget {
  @override
  _BizHomeState createState() => _BizHomeState();
}

class _BizHomeState extends State<BizHome> {
  var _current = 0;
  var list = [
    'Add in promotions, menus and flyers',
    'add text 1',
    'add text 2'
  ];
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
          children: [
            SizedBox(
              height: 620,
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
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 25,
                  height: 25,
                  child: Image(image: AssetImage("assets/images/star.png")),
                ),
                SizedBox(
                  width: 10,
                ),
                RichText(
                  text: TextSpan(
                    text: "Stand out with a customized profile",
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
              ],
            ),
            Container(
                child: Column(children: [
              CarouselSlider(
                options: CarouselOptions(
                  height: 50,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _current = index;
                    });
                  },
                ),
                items: list
                    .map((item) => Container(
                          child: Center(
                              child: Text(
                            item.toString(),
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          )),
                        ))
                    .toList(),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: list.map(
                  (item) {
                    int index = list.indexOf(item);
                    return Container(
                      width: 8.0,
                      height: 8.0,
                      margin:
                          EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: _current == index
                              ? Color.fromRGBO(0, 0, 0, 0.9)
                              : Color.fromRGBO(0, 0, 0, 0.4)),
                    );
                  },
                ).toList(),
              )
            ])),
            ButtonTheme(
              height: 40,
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                    side: BorderSide(color: Color(0xffAFD755))),
                onPressed: () {},
                elevation: 5,
                color: Color(0xffAFD755),
                textColor: Colors.white,
                child: Text(" My Lokal+ ", style: TextStyle(fontSize: 17)),
              ),
            ),
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
