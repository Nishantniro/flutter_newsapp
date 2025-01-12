import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_newsapp/constants/url_constants.dart';
import 'package:http/http.dart' as http;

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  _fetchNews() async {
    var url = Uri.parse(NewsApiKey);
    var response = await http.get(url);
    return jsonDecode(response.body);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
          child: FutureBuilder(
              future: _fetchNews(),
              builder: ((context, AsyncSnapshot snapshot) {
                if (snapshot.hasData) {
                  return Column(
                    children: [Text(snapshot.data["articles"].toString())],
                  );
                } else {
                  return const CircularProgressIndicator();
                }
              }))),
    );
  }
}
