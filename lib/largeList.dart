import 'package:flutter/material.dart';

class largeList extends StatefulWidget {
  const largeList({Key? key}) : super(key: key);

  @override
  _largeListState createState() => _largeListState();
}

class _largeListState extends State<largeList> {
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
    return SingleChildScrollView(
      child: Column(
        children: [
          list(img[0], titel[0], review[0], price[0], pieces[0], quantity[0]),
          list(img[1], titel[1], review[0], price[0], pieces[0], quantity[0]),
          list(img[2], titel[2], review[0], price[0], pieces[0], quantity[0]),
          list(img[3], titel[3], review[0], price[0], pieces[0], quantity[0]),
          list(img[4], titel[4], review[0], price[0], pieces[0], quantity[0]),
        ],
      ),
    );
  }
}

Widget list(String img, String titel, String review, String price,
    String pieces, String qut) {
  return Column(
    children: [
      SizedBox(
        height: 9,
      ),
      Padding(
        padding: const EdgeInsets.only(right: 14.0, left: 14.0, top: 7.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
            boxShadow: [
              BoxShadow(color: Colors.black12, spreadRadius: 3),
            ],
          ),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Container(
                  height: 110,
                  width: 120,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(img),
                      fit: BoxFit.fill,
                    ),
                    borderRadius: BorderRadius.circular(10),
                    shape: BoxShape.rectangle,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: Text(
                        titel,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
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
                          child: Text(review),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 3.0, top: 5),
                          child: Text("$pieces Pieces"),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 18.0, top: 5),
                          child: Text(
                            price,
                            style: TextStyle(
                              color: Colors.amber,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 3.0, top: 5),
                      child: Text("Quantity $qut"),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      )
    ],
  );
}
