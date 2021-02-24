import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffECFEFF),
      body: getBody(),
    );
  }

  Widget getBody() {
    return ListView(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: SvgPicture.asset("assets/images/filter_icon.svg"),
            ),
            SizedBox(height: 70),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 55.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        RichText(
                          text: TextSpan(
                            text: 'Discover ',
                            style: TextStyle(fontSize: 36, color: Colors.black),
                          ),
                        ),
                        SizedBox(width: 40),
                        MaterialButton(
                          elevation: 1.0,
                          padding: EdgeInsets.all(12.0),
                          textColor: Colors.white,
                          color: Colors.white,
                          child: Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      'assets/images/filter_icon.png'),
                                  fit: BoxFit.contain),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(13.0),
                            ),
                          ),
                          shape: CircleBorder(),
                          onPressed: () {},
                        ),
                      ],
                    ),
                    RichText(
                      text: TextSpan(
                        text: 'Restaurants',
                        style: TextStyle(
                            fontSize: 36,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.underline,
                            color: Color(0xff96BE4B)),
                      ),
                    ),
                    SizedBox(height: 10),
                    RichText(
                      text: TextSpan(
                        text: 'in ',
                        style: TextStyle(fontSize: 36, color: Colors.black),
                        children: <TextSpan>[
                          TextSpan(
                            text: 'Mississauga',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.underline,
                                color: Color(0xff96BE4B)),
                          ),
                        ],
                      ),
                    )
                  ],
                )),
            SizedBox(height: 40),
            SizedBox(
              height: 1000000,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      // remove
                      color: Colors.black,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(20))),
              ),
            ),
          ],
        )
      ],
    );
  }
}
