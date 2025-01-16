import 'package:flutter/material.dart';
import 'package:flutter_newsapp/homepage_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(new Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (context) =>
                  MyHomePage(title: "world's top headlines")));
    });
    return Scaffold(
        body: Column(
      children: [
        Container(
          height: 100,
        ),
        Image.asset("/assets/icon/appIcon.png"),
      ],
    ));
  }
}
