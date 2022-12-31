import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Profilepage extends StatelessWidget {
  const Profilepage({super.key});

  static String imageurl =
      "https://pbs.twimg.com/profile_images/1608129257221533696/bAxRmtib_400x400.jpg";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
            onPressed: () {},
            icon: Icon(
              CupertinoIcons.lock,
              color: Colors.black,
            ),
          ),
          title: Text(
            "aashish_bibyan",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  CupertinoIcons.plus_app,
                  color: Colors.black,
                )),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  CupertinoIcons.line_horizontal_3,
                  color: Colors.black,
                ))
          ],
        ),
        body: Column(
          children: [
            SizedBox(
              height: 10,
              width: 20,
            ),
            Row(
              children: [
                SizedBox(
                  height: 10,
                  width: 10,
                ),
                CircleAvatar(
                  backgroundImage: NetworkImage(imageurl),
                  radius: 50,
                ),
                SizedBox(
                  height: 10,
                  width: 50,
                ),
                Text(
                  textAlign: TextAlign.center,
                  "10 \n Posts",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                  width: 50,
                ),
                Text(
                  textAlign: TextAlign.center,
                  "275 \n Followers",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                  width: 50,
                ),
                Text(
                  textAlign: TextAlign.center,
                  "282 \n Following",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(
              height: 10,
              width: 10,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "  Aashish Bibyan\n  Ex holy familian\n  Keep calm and game on",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 10,
              width: 10,
            ),
            Row(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Card(
                  color: Colors.grey,
                  shape: StadiumBorder(),
                  elevation: 1,
                  child: Text(
                    "                   Edit Profile                   ",
                    textScaleFactor: 2,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Icon(
                  CupertinoIcons.person_badge_plus,
                )
              ],
            ),
          ],
        ));
  }
}
