import 'package:flutter/material.dart';

class MobileList extends StatefulWidget {
  const MobileList({ Key? key }) : super(key: key);

  @override
  _MobileListState createState() => _MobileListState();
}

class _MobileListState extends State<MobileList> {
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
  ];  var titel = [
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //  appBar: AppBar(
      //     centerTitle: true,
      //     backgroundColor:Colors.white,
      //     title: Text('Ecom App UI',
      //     style: TextStyle(
      //       color: Colors.black,
      //       fontWeight: FontWeight.bold),
      //       ),
      //     actions: <Widget>[
      //       IconButton(
      //         icon: Icon(
      //           Icons.notifications,
      //           color: Colors.black,
      //         ),
      //         onPressed: () {},
      //       )
      //     ],
      //   ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 14, vertical: 6),
                child: TextField(
                  style: TextStyle(height: 1.3),
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Username',
                      suffixIcon: IconButton(
                        icon: Icon(
                          Icons.search,
                          color: Colors.black,
                        ),
                        onPressed: () {},
                      )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40, top: 5),
                child: Text(
                  "History",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              // ListView(
              //   children: [
              //     for (var i = 0; i < 5; i++)
              //       list(img[0], titel[i], review[0], price[0]),
              //   ],
              // ),
              list(img[0],titel[0], review[0], price[0]),
              list(img[1],titel[1], review[0], price[0]),
              list(img[2],titel[2], review[0], price[0]),
              list(img[3],titel[3], review[0], price[0]),
              list(img[4],titel[4], review[0], price[0]),
              list(img[5],titel[5], review[0], price[0]),
              list(img[6],titel[6], review[0], price[0]),
              list(img[7],titel[7], review[0], price[0]),
              // list(img[8],titel[8], review[0], price[0]),
              SizedBox(
                height: 42,
              )
            ],
          ),
        ),
      ),

      // body: ListView.builder(itemBuilder: lst.leanth),
    );
  }
}

// class Data {
//   String title;
//   String sub_title;
//   Data({this.title, this.sub_title});
// }

Widget list(String img, String titel, String subtitle, String price) {
  return ListTile(
    leading: CircleAvatar(
      // backgroundColor: Colors.green,
      radius: 20,
      backgroundImage: AssetImage(img),
    ),
    title: Text(titel),
    subtitle: Row(
      children: [
        Icon(
          Icons.star,
          color: Colors.yellow,
          size: 17,
        ),
        Text("  $subtitle"),
      ],
    ),
    trailing: Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 25.0),
          child: Text("\$$price"),
        ),
        // CircleAvatar(
        //   backgroundColor: Colors.white,
        //   radius: 10,
        //   // child: Text("No"),
        // )
      ],
    ),
  );
}
