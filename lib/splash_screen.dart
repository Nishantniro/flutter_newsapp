import 'package:flutter/material.dart';
import 'package:NewsNNN/homepage_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(new Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (context) =>
                  MyHomePage(title: "World's Top Headlines")));
    });
    return Scaffold(
        body: Column(
      children: [
        Container(
          height: 200,
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(18),
          child: Image.asset(
            'assets/appIcon.png',
            width: 300.0,
            height: 300.0,
          ),
        ),
        Container(
          height: 10,
        ),
        Text(
          "NewsNNN",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 0, 0, 0),
              fontSize: 29,
              fontStyle: FontStyle.normal),
        ),
        CircularProgressIndicator()
      ],
    ));
  }
}
