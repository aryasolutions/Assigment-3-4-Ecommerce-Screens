import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  var name = "Lovely Mian";
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Arya Solutions',
      home: Scaffold(
          body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Padding(padding: EdgeInsets.all(10)),
              Row(
                children: [
                  Container(
                    height: 122,
                    width: 122,
                    // width: MediaQuery.of(context).size.width / 3,
                    // color: Colors.black38,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/profile.png'),
                        fit: BoxFit.fill,
                      ),
                      shape: BoxShape.rectangle,
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Text(
                          "Mudassir",
                          textAlign: TextAlign.left,
                          // textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Text(
                          "aryaitsol@gmail.com",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 80.3),
                        child: TextButton(
                            onPressed: () {},
                            child: Text(
                              "Logout",
                              textAlign: TextAlign.start,
                              style:
                                  TextStyle(fontSize: 15, color: Colors.purple),
                            )),
                      )
                    ],
                  ),
                ],
              ),

              SizedBox(
                height: 15,
              ),
              Text(
                "ACCOUNT INFORMATION",
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "Full Name",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(name,
                    style: TextStyle(fontSize: 20, color: Colors.black45),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 140),
                    child: IconButton(
                      onPressed: () {
                        showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: Text("Update Name"),
                    content: TextField(
                      decoration: InputDecoration(
                          // border: OutlineInputBorder(),
                          hintText: name),
                      onChanged: (value) {
                        name = value;
                      },
                    ),
                    actions: [
                      ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                            setState(() {
                            });
                          },
                          child: Center(child: Text("Update")))
                    ],
                  );
                });
                      },
                      icon: Icon(
                        Icons.edit,
                        color: Colors.black38,
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(
                height: 15,
              ),
              Text(
                "Email",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "mudassirmukhtar@gmail.com",
                style: TextStyle(fontSize: 20, color: Colors.black45),
              ),

              SizedBox(
                height: 15,
              ),
              Text(
                "Phone",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "+9234-4535400",
                style: TextStyle(fontSize: 20, color: Colors.black45),
              ),

              SizedBox(
                height: 15,
              ),
              Text(
                "Adress",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Gulistan Colony Shahkot",
                style: TextStyle(fontSize: 20, color: Colors.black45),
              ),

              SizedBox(
                height: 15,
              ),
              Text(
                "Gander",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Mail",
                style: TextStyle(fontSize: 20, color: Colors.black45),
              ),

              SizedBox(
                height: 15,
              ),
              Text(
                "Date of Birth",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "August 13, 1998",
                style: TextStyle(fontSize: 20, color: Colors.black45),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
