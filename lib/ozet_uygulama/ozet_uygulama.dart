import 'package:flutter/material.dart';
import 'package:qnb_finansbank_w1_d3/datetime_picker.dart';
import 'package:qnb_finansbank_w1_d3/image_exmaples.dart';
import 'package:qnb_finansbank_w1_d3/linear_progress_bar.dart';
import 'package:qnb_finansbank_w1_d3/radio_button_widget.dart';
import 'package:qnb_finansbank_w1_d3/switch_widget.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  void initState() {
    super.initState();

    appTitle = 'init state ile degisti';
  }

  String appTitle = 'Profile Page';

  String userNaeme = 'alperen';

  String framework = 'flutter';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (() {
        setState(() {
          userNaeme = 'ahmet';
          framework = 'react';
        });
      })),
      appBar: AppBar(
        title: Text(appTitle),
      ),
      body: SingleChildScrollView(
        // scrollDirection: Axis.horizontal,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () => print('icona tiklandi'),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.amber[200],
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Icon(Icons.person, size: 50),
                  ),
                ),
              ],
            ),

            // kullanıcının bilgileri

            Text(userNaeme),
            Text(framework),

            // switch buton ornegi
            SwtictWidget(),

            // radio button örnegi

            RadioButtonWidget(),

            // progressbar ornegi
            ProgressBar(),

            // image network example

            ImageExamplePage(),
          ],
        ),
      ),
    );
  }
}
