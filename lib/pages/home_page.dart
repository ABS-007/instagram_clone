import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});
  static int likes = 0;
  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  Widget story(String path, String imageurl) {
    return InkWell(
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
    );
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        child: SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(width: 10, height: 35),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              SizedBox(width: 10, height: 10),
              Text(
                "Instagram",
                textScaleFactor: 3,
                style: TextStyle(color: Colors.black),
              ),
              SizedBox(width: 95, height: 10),
              IconButton(
                  onPressed: () {},
                  icon: Icon(CupertinoIcons.plus_app, size: 40)),
              SizedBox(width: 5, height: 10),
              IconButton(
                  onPressed: () {},
                  icon: Image.asset("assets/icons/messanger.png", scale: 2))
            ],
          ),
          Divider(
            height: 10,
            thickness: 2,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                SizedBox(height: 10, width: 10),
                story("path",
                    "https://pbs.twimg.com/profile_images/1608129257221533696/bAxRmtib_400x400.jpg"),
                SizedBox(height: 10, width: 10),
                story("path",
                    "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.inuth.com%2Fphotos%2Fshah-rukh-khan-photos%2Finsta%2F&psig=AOvVaw0gE6LZ0QYJDFw4oZUBJh2R&ust=1672557507615000&source=images&cd=vfe&ved=0CAwQjRxqFwoTCKDdpLKoo_wCFQAAAAAdAAAAABAE"),
                SizedBox(height: 10, width: 10),
                story("path",
                    "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.facebook.com%2FTimesofIndia%2F&psig=AOvVaw1fMyFXmkhEUVL-idkaHq53&ust=1672557584679000&source=images&cd=vfe&ved=0CAwQjRxqFwoTCPiIjdeoo_wCFQAAAAAdAAAAABAE"),
                SizedBox(height: 10, width: 10),
                story("path",
                    "https://www.google.com/imgres?imgurl=https%3A%2F%2Fscontent-iad3-2.cdninstagram.com%2Fv%2Ft51.2885-19%2F300819866_570261568158298_8443709233593606227_n.jpg%3Fstp%3Ddst-jpg_s150x150%26_nc_ht%3Dscontent-iad3-2.cdninstagram.com%26_nc_cat%3D1%26_nc_ohc%3DVSlP8CyU09kAX-a2QMa%26edm%3DABfd0MgBAAAA%26ccb%3D7-5%26oh%3D00_AfCkVx0rNuJiTTtPR0F0qPUcYwkEuKjvSFtmvdKhCkV-iw%26oe%3D63B4A5DE%26_nc_sid%3D7bff83&imgrefurl=https%3A%2F%2Fwww.instagram.com%2Fvirat.kohli%2F&tbnid=cz6SpByUkSBtLM&vet=12ahUKEwi99vX_qKP8AhXJi9gFHT_NCcwQMygAegUIARC4AQ..i&docid=IXzl-BefCr_YpM&w=150&h=150&q=kohli%20profile%20image%20insta&ved=2ahUKEwi99vX_qKP8AhXJi9gFHT_NCcwQMygAegUIARC4AQ"),
                SizedBox(height: 10, width: 10),
                story("path",
                    "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.instagram.com%2Fp%2FCXLjq-MMJlu%2F&psig=AOvVaw3BNG6iVRHXcXXlafw8TUtn&ust=1672557725404000&source=images&cd=vfe&ved=0CA0QjRxqFwoTCJDi2aKpo_wCFQAAAAAdAAAAABAD"),
              ],
            ),
          ),
          SizedBox(height: 10, width: 10),
          Card(
            child: Column(
              children: [
                ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://pbs.twimg.com/profile_images/1608129257221533696/bAxRmtib_400x400.jpg"),
                  ),
                  title: Text(
                    "aashish_bibyan",
                    textScaleFactor: 1.2,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  trailing: Icon(CupertinoIcons.ellipsis_vertical),
                ),
                Image.network(
                    "https://pbs.twimg.com/profile_images/1608129257221533696/bAxRmtib_400x400.jpg",
                    height: 300,
                    width: 300),
                Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    IconButton(
                      onPressed: () {
                        setState(() {
                          Homepage.likes++;
                        });
                      },
                      icon: Icon(CupertinoIcons.heart),
                      iconSize: 25,
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Image.asset("assets/icons/speech-bubble.png")),
                    IconButton(
                        onPressed: () {},
                        icon: Image.asset("assets/icons/send.png"))
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
          )
        ],
      ),
    ));
  }
}
