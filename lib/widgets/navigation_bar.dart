import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../pages/home_page.dart';
import '../utils/routes.dart';

class InstaNavigationBar extends StatelessWidget {
  const InstaNavigationBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        IconButton(
          onPressed: () {
            Navigator.pushNamed(context, MyRoutes.homepage);
          },
          icon: Icon(
            CupertinoIcons.home,
            size: 40,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(
            CupertinoIcons.search,
            size: 40,
          ),
        ),
        InkWell(
          onTap: () {},
          child: Image.network(
            "https://cdn.icon-icons.com/icons2/3237/PNG/512/chatting_social_media_menu_brand_video_instagram_reel_icon_197364.png",
            height: 40,
            width: 40,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(
            CupertinoIcons.heart,
            size: 40,
          ),
        ),
        IconButton(
            onPressed: () {
              Navigator.pushNamed(context, MyRoutes.profilepage);
            },
            icon: CircleAvatar(
              backgroundImage: NetworkImage(Homepage.imageurl),
              radius: 25,
            )),
      ],
    );
  }
}
