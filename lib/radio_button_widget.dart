import 'package:flutter/material.dart';


class RadioButtonWidget extends StatefulWidget {
  const RadioButtonWidget({super.key});

  @override
  State<RadioButtonWidget> createState() => _RadioButtonWidgetState();
}

enum SingingCharacter { lafayette, jefferson }

class _RadioButtonWidgetState extends State<RadioButtonWidget> {
  bool value = false;
  SingingCharacter? _character = SingingCharacter.lafayette;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: const Text('lafayette'),
          leading: Radio(
              value: SingingCharacter.lafayette,
              groupValue: _character,
              onChanged: ((SingingCharacter? value) {
                setState(() {
                  _character = value;
                });
              })),
        ),
        ListTile(
          title: const Text('Thomas Jefferson'),
          leading: Radio<SingingCharacter>(
            value: SingingCharacter.jefferson,
            groupValue: _character,
            onChanged: (SingingCharacter? value) {
              setState(() {
                _character = value;
              });
            },
          ),
        ),
      ],
    );
  }
}
