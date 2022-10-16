import 'package:flutter/material.dart';

class SwtictWidget extends StatefulWidget {
  const SwtictWidget({super.key});

  @override
  State<SwtictWidget> createState() => _SwtictWidgetState();
}

class _SwtictWidgetState extends State<SwtictWidget> {
  bool light = true;
  @override
  Widget build(BuildContext context) {
    return Switch(
        value: light,
        onChanged: (bool value) {
          setState(() {
            light = value;
          });
        });
  }
}
