import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),

          //  Navigator.pushAndRemoveUntil(context, newRoute, (route) => false)
          //  Navigator.maybePop(context),

          // Navigator.popAndPushNamed(context, '/ikinciSayfa')

          // Navigator.pop(context),
          child: Icon(Icons.accessibility_new_outlined),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: GestureDetector(
              onLongPress: () => print('home screen yazısına uzun basıldı'),
              child: Text('Second Screen'),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          InkWell(
            child: Text('inkwell button örnek'),
            onTap: () => print('inkwell butonu çalıştı'),
          ),

          // inkwll ve gesture farkı gesture bazı tasarım adımlarında
          // dış çerçeveden tıklanabilir yapamıyor.
          GestureDetector(
            onTap: () => print('icona tiklandi'),
            child: Icon(
              Icons.accessibility_new_outlined,
              size: 200,
            ),
          ),
        ],
      ),
    );
  }
}
