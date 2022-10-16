import 'package:flutter/material.dart';
import 'package:qnb_finansbank_w1_d3/home_page.dart';

void main() {
  runApp(const MyApp());
}

// route bu şekilde işlemektedir.
// myApp --> HomePage --> ScreenLifecyle --> SecondPage

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}
