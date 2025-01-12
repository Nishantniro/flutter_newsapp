import 'package:flutter/material.dart';
import '../constants/url_constants.dart';

getNewsCard(e) {
  return Column(
    children: [
      Image.network(e["urlToImage"] ?? PLACEHOLDER_IMAGE_URL),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text(
              e["title"],
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(e["description"] ?? "...")
          ],
        ),
      )
    ],
  );
}
