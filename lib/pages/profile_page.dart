import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/navigation_bar.dart';

class Profilepage extends StatelessWidget {
  static List<String> imageurl = [
    "https://pbs.twimg.com/profile_images/1608129257221533696/bAxRmtib_400x400.jpg",
    "https://drive.google.com/file/d/1bT2TBnPEtgdV3E8Gf9bKAd7XuIWntT9B/view?usp=share_link",
    "https://drive.google.com/file/d/1bU1ztSImiVlOeiRk0wNrRCmZAD1ufRc6/view?usp=share_link",
    "https://drive.google.com/file/d/1bZgjBDnir47AvsFQWWpiiys7Wi7LRlD1/view?usp=share_link",
    "https://drive.google.com/file/d/1bWS2K9Bu1OT0cPXADIxGqB7P2OHarY_F/view?usp=share_link",
    "https://drive.google.com/file/d/1bICTGAW3-w4Q2_hR1OQVdLKCnnDWF2e3/view?usp=share_link"
  ];

  const Profilepage({super.key});

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
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(imageurl[0]),
                  radius: 50,
                ),
                Text(
                  textAlign: TextAlign.center,
                  "10 \n Posts",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                Text(
                  textAlign: TextAlign.center,
                  "275 \n Followers",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
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
                    textScaleFactor: 1.6,
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
            SizedBox(
              height: 450,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3),
                    itemCount: 6,
                    itemBuilder: (context, index) => Card(
                          clipBehavior: Clip.antiAlias,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          child: GridTile(
                            child: Image.network(imageurl[index]),
                          ),
                        )),
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomAppBar(
          child: InstaNavigationBar(),
        ));
  }
}
