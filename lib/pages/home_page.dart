import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/navigation_bar.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});
  static int likes = 169;
  static bool liked = false;
  static String imageurl =
      "https://pbs.twimg.com/profile_images/1608129257221533696/bAxRmtib_400x400.jpg";
  static String storyurl =
      "https://www.indiaonlinepages.com/bollywood/gifs/shahrukh-khan.jpg";
  static String storyurl1 =
      "https://images.hindustantimes.com/img/2022/07/06/550x309/dhoni-2016-getty_1654515327472_1657137509048.jpg";
  static String storyurl2 =
      "https://ik.imagekit.io/j83rchiauw/A_List_Star/KingRapperBiography.jpg";
  static String storyurl3 =
      "https://www.forbesindia.com/media/images/2022/Aug/img_192351_viratkohli.jpg";
  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  Widget story(String path, String imageurl) {
    return SafeArea(
      child: InkWell(
        onTap: () {
          // ignore: avoid_print
          print("Story viewed");
        },
        child: Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              color: Colors.black,
              shape: BoxShape.circle,
            ),
            child: CircleAvatar(
              backgroundImage: NetworkImage(imageurl, scale: 1),
            )),
      ),
    );
  }

  Widget post(String username, String imageurl) {
    return Card(
      child: Column(
        children: [
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(Homepage.imageurl),
            ),
            title: Text(
              "aashish_bibyan",
              textScaleFactor: 1.2,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            trailing: Icon(CupertinoIcons.ellipsis_vertical),
          ),
          Image.network(Homepage.imageurl, height: 300, width: 300),
          Row(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              IconButton(
                onPressed: () {
                  setState(() {
                    if (Homepage.liked == false) {
                      Homepage.likes++;
                      Homepage.liked = true;
                    } else if (Homepage.liked == true) {
                      Homepage.likes--;
                      Homepage.liked = false;
                    }
                  });
                },
                icon: Homepage.liked
                    ? Icon(CupertinoIcons.heart_fill)
                    : Icon(CupertinoIcons.heart),
                iconSize: 25,
              ),
              IconButton(
                  onPressed: () {},
                  icon: Image.asset("assets/icons/speech-bubble.png")),
              IconButton(
                  onPressed: () {}, icon: Image.asset("assets/icons/send.png"))
            ],
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              "${Homepage.likes} likes",
              textAlign: TextAlign.left,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Align(
              alignment: Alignment.topLeft,
              child: Text("aashish_bibyan",
                  style: TextStyle(fontWeight: FontWeight.bold)))
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            "Instagram",
            style: TextStyle(color: Colors.black, fontSize: 40),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(CupertinoIcons.plus_app, size: 40),
                color: Colors.black),
            SizedBox(width: 5, height: 10),
            IconButton(
                onPressed: () {},
                icon: Image.asset("assets/icons/messanger.png", scale: 2))
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 20,
                width: 20,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SizedBox(height: 10, width: 10),
                    story("path", Homepage.imageurl),
                    SizedBox(height: 10, width: 10),
                    story("path", Homepage.storyurl),
                    SizedBox(height: 10, width: 10),
                    story("path", Homepage.storyurl1),
                    SizedBox(height: 10, width: 10),
                    story("path", Homepage.storyurl2),
                    SizedBox(height: 10, width: 10),
                    story("path", Homepage.storyurl3),
                  ],
                ),
              ),
              SizedBox(height: 10, width: 10),
              post("username", "imageurl"),
              post("username", "storyurl"),
            ],
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          child: InstaNavigationBar(),
        ));
  }
}
