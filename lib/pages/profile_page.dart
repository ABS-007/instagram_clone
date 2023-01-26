import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/navigation_bar.dart';

class Profilepage extends StatelessWidget {
  static List<String> imageurl = [
    "https://pbs.twimg.com/profile_images/1608129257221533696/bAxRmtib_400x400.jpg",
    "https://github.com/ABS-007/instagram_clone/blob/main/assets/images/IMG_20211108_093633_199.jpg?raw=true",
    "https://github.com/ABS-007/instagram_clone/blob/main/assets/images/IMG_20211215_075314_117.jpg?raw=true",
    "https://github.com/ABS-007/instagram_clone/blob/main/assets/images/IMG_20220620_005417_643.jpg?raw=true",
    "https://github.com/ABS-007/instagram_clone/blob/main/assets/images/IMG_20220620_005417_699.jpg?raw=true",
    "https://github.com/ABS-007/instagram_clone/blob/main/assets/images/IMG_20220724_143926_773.jpg?raw=true"
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
                  "280 \n Followers",
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
