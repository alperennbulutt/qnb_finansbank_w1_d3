import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({
    super.key,
  });

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  String titleDegisken = 'new title';

  // elevated button pressed func.
  actionButton() {
    debugPrint('asdasd');
    print('pressed');
    // titleDegisken = 'ahmet';
    setState(() {
      titleDegisken = 'alperen';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(titleDegisken),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () => actionButton(),
            child: const Text('AppBarDegistir')),
      ),
    );
  }
}
