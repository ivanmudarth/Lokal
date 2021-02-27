import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final categories = ["Greek", "French", "Italian"];
  final bizList = [
    "Lazros Greek Grills",
    "Piatto",
    "Bobby's Hideaway",
    "Orchard Diner",
    " Grill House",
    "Mo's Restaurant"
  ];

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
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 55.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 30),
                      TextField(
                          cursorColor: Colors.black,
                          decoration: InputDecoration(
                              prefixIcon: Icon(
                                Icons.search,
                                size: 30,
                                color: Colors.black,
                              ),
                              hintStyle: TextStyle(fontSize: 20),
                              hintText: 'Search')),
                      SizedBox(height: 30),
                      Row(
                        children: [
                          for (int i = 0; i < categories.length; ++i)
                            Row(
                              children: [
                                CategoryButton(text: categories.elementAt(i)),
                                if (i != categories.length - 1)
                                  SizedBox(
                                    width: 15,
                                  )
                              ],
                            )
                        ],
                      ),
                      SizedBox(height: 30),
                      SizedBox(
                          height: 10000,
                          child: GridView.count(
                            // padding: EdgeInsets.zero,
                            crossAxisCount: 2,
                            childAspectRatio: 0.75,
                            crossAxisSpacing: 25,
                            mainAxisSpacing: 10,
                            children: [
                              for (int i = 1; i <= bizList.length; ++i)
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image.asset('assets/images/biz$i.png'),
                                    SizedBox(height: 10),
                                    RichText(
                                      text: TextSpan(
                                        text: bizList[i - 1],
                                        style: TextStyle(
                                            fontSize: 17,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black),
                                      ),
                                    ),
                                    SizedBox(height: 5),
                                    RichText(
                                        text: TextSpan(
                                      text: "Details ...",
                                      style: TextStyle(
                                          fontSize: 15, color: Colors.black),
                                    )),
                                  ],
                                )
                            ],
                          )),
                      SizedBox(height: 30),
                      Column(
                        children: [CategoryButton(text: "Load More...")],
                      )
                    ],
                  ),
                ),
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
}
