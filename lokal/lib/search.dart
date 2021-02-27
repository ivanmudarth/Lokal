import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  // must contain EVEN number of elements
  final categories = [
    "Arts & Crafts",
    "Restaurants",
    "Grocers",
    "Entertainment",
    "Bakeries",
    "Thrift Stores"
  ];

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
        SizedBox(
          height: 25,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 55.0),
          child: Column(children: [
            RichText(
              text: TextSpan(
                  text: 'Search Businesses:',
                  style: TextStyle(
                    fontSize: 30,
                    fontFamily: "SF Pro Display",
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                    //color: Color(0xff96BE4B)),
                  )),
            ),
            SizedBox(
              height: 25,
            ),
            TextField(
              decoration: InputDecoration(
                  fillColor: Color(0xffe8e8e8),
                  filled: true,
                  contentPadding: new EdgeInsets.symmetric(vertical: 0),
                  prefixIcon: Icon(
                    Icons.search,
                    size: 18,
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: new BorderSide(color: Colors.amber)),
                  hintText: 'Search'),
            ),
            SizedBox(
              height: 25,
            ),
            SizedBox(
                height: 500,
                child: GridView.count(
                  // padding: EdgeInsets.zero,
                  crossAxisCount: 1,
                  childAspectRatio: 5,
                  mainAxisSpacing: 1,
                  children: [
                    for (int i = 0; i < categories.length; i += 2)
                      Row(children: [
                        CategoryButton(text: categories.elementAt(i)),
                        SizedBox(width: 20),
                        CategoryButton(text: categories.elementAt(i + 1))
                      ]),
                  ],
                )),
          ]),
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
