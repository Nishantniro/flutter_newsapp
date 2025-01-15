import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';
import '../constants/url_constants.dart';
import 'package:url_launcher/url_launcher.dart';

_launchUrl(String url) async {
  if (!await launchUrl(Uri.parse(url))) {
    throw Exception('Could not launch $url');
  }
}

getNewsCard(e) {
  return Stack(children: [
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            color: const Color.fromARGB(255, 98, 175, 189),
            borderRadius: BorderRadius.circular(12.0)),
        child: Column(
          children: [
            Image.network(e["urlToImage"] ?? PLACEHOLDER_IMAGE_URL),
            GestureDetector(
              onTap: () => _launchUrl(e["url"]),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Text(
                      e["title"],
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontSize: 17,
                          fontStyle: FontStyle.normal),
                    ),
                    const SizedBox(
                      height: 8.0,
                    ),
                    Text(e["description"] ?? "...")
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    ),
    Positioned(
      top: 10.0,
      right: 20.0,
      child: GestureDetector(
        onTap: () => Share.share("read more news at: ${e["url"]}"),
        child: const Icon(
          Icons.share,
          color: Colors.white,
          size: 30,
        ),
      ),
    )
  ]);
}
