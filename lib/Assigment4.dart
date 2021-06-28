import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class assigment4 extends StatefulWidget {
  const assigment4({Key? key}) : super(key: key);

  @override
  _assigment4State createState() => _assigment4State();
}

class _assigment4State extends State<assigment4> {
  var img = [
    "assets/p1.jpg",
    "assets/p2.jpg",
    "assets/p3.jpg",
    "assets/p4.jpg",
    "assets/p5.jpg",
    "assets/p6.jpg",
    "assets/p7.jpg",
    "assets/p8.jpg",
    "assets/p9.jpg",
  ];
  var titel = [
    "Iphone 12",
    "Note 20 Ultra",
    "Macbook Air",
    "Gaming Pc",
    "Backlit Keboard",
    "Mercedes",
    "Mutton",
    "Roadster",
    "Royal Field"
  ];
  var review = ["5.0 (23 Reviews)"];
  var price = ["10"];
  var pieces = ["20"];
  var quantity = ["1"];
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    /*24 is for notification bar on Android*/
    final double itemHeight = (size.height - kToolbarHeight - 24) / 2;
    final double itemWidth = size.width / 2;
    return SingleChildScrollView(
      child: Column(
        children: [
          slider(img, titel, review),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, bottom: 8, top: 8),
              child: Divider(
                color: Colors.black26
              ),
            ),
          categorieslider(),
          list(img, titel, review, size),
        ],
      ),
    );
  }
}

Widget categorieslider() {
  var titel = ["Clothes", "Electronic", "Households", "Appliances", "Other"];
  var count = ["3 Items", " 4 Items", "3 Items", "34 Items", "23Items"];
  var icn = [
    Icons.shop,
    Icons.power_sharp,
    Icons.other_houses,
    Icons.power_sharp,
    Icons.more
  ];
  return Column(
    children: [
      CarouselSlider(
          items: [
            item(titel[0], count[0], icn[0]),
            item(titel[1], count[1], icn[1]),
            item(titel[2], count[2], icn[2]),
            item(titel[3], count[3], icn[3]),
            item(titel[4], count[4], icn[4]),
          ],
          options: CarouselOptions(
            autoPlay: false,
            height: 52.0,
            viewportFraction: 0.8,
          )),
    ],
  );
}

Widget item(var titel, var count, var icn) {
  // var icn = [Icons.more];
  return Container(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(
            left: 12,
            right: 12,
            bottom: 8,
          ),
          child: Icon(
            icn,
            color: Colors.purple,
            size: 40,
          ),
        ),
        Column(
          children: [
            Text(
              titel,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Text(
              count,
              style: TextStyle(fontSize: 14),
              textAlign: TextAlign.left,
            ),
          ],
        ),
      ],
    ),
  );
}

Widget slider(var img, var titel, var review) {
  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                "Item",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
            ),
            TextButton(onPressed: () {}, child: Text("View More"))
          ],
        ),
      ),
      CarouselSlider(
          items: [
            SlideList(img[0], titel[0]),
            SlideList(img[1], titel[1]),
            SlideList(img[2], titel[2]),
            SlideList(img[3], titel[3]),
            SlideList(img[4], titel[4]),
            SlideList(img[5], titel[5]),
            SlideList(img[6], titel[6]),
          ],
          options: CarouselOptions(
            autoPlay: true,
            height: 310.0,
            viewportFraction: 1,
          )),
    ],
  );
}

Widget SlideList(String img, String titel) {
  return Padding(
    padding: const EdgeInsets.only(left: 20, right: 20),
    child: Column(
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(img),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(10),
            shape: BoxShape.rectangle,
          ),
          height: 240,
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Text(
                titel,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Icon(
              Icons.star,
              color: Colors.yellow,
              size: 17,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 3.0, top: 5),
              child: Text("5.0 (23 Reviews)"),
            ),
          ],
        ),
      ],
    ),
  );
}


Widget list(var img, var titel, var review, var size) {
  /*24 is for notification bar on Android*/
  final double itemHeight = (size.height) / 2.4;
  final double itemWidth = size.width / 1.6;
  var imgHeight = itemHeight /2.2;
  var imgwidth = itemWidth /6;
  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                "Popular Items",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
            ),
            TextButton(onPressed: () {}, child: Text("View More"))
          ],
        ),
      ),
      GridView.count(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        crossAxisCount: 2,
        childAspectRatio: (itemWidth / itemHeight),
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
        children: List.generate(titel.length, (index) {
          return Container(
              margin: new EdgeInsets.all(2),
              child: Padding(
                padding: const EdgeInsets.only(right: 2.0, left: 2.0, top: 2.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(color: Colors.black12, spreadRadius: 3),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 200,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Container(
                              // height: 100,
                              // width: 130,
                              height: imgHeight,
                              width: itemWidth,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(img[index]),
                                  fit: BoxFit.fill,
                                ),
                                borderRadius: BorderRadius.circular(10),
                                shape: BoxShape.rectangle,
                              ),
                            ),
                          ),
                          Text(
                            titel[index],
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                                size: 17,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                                size: 17,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                                size: 17,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                                size: 17,
                              ),
                            ],
                          ),
                          Text(review[0]),
                        ],
                      ),
                    ),
                  ),
                  // )
                ),
              ));
        }),
      ),
    ],
  );
}
