import 'package:flutter/material.dart';

class ImageExamplePage extends StatelessWidget {
  const ImageExamplePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      height: 500,
      child: Image.network(
          "https://cdn03.ciceksepeti.com/cicek/at4288-1/XL/mor-dusler-cicek-buketi-at4288-1-a43a60444242434d9319d5c959d3ba02.jpg"),
    );
  }
}
