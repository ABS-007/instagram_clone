import 'package:flutter/material.dart';
import 'package:insta_clone/pages/home_page.dart';
import 'package:insta_clone/pages/profile_page.dart';

void main() {
  runApp(Myinsta());
}

class Myinsta extends StatelessWidget {
  const Myinsta({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      darkTheme: ThemeData(brightness: Brightness.dark),
      routes: {
        "/": (context) => Profilepage(),
        "/home": (context) => Homepage(),
        "/profile": (context) => Profilepage(),
      },
    );
  }
}
