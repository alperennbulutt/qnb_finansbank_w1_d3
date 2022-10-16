import 'package:flutter/material.dart';
import 'package:qnb_finansbank_w1_d3/datetime_picker.dart';
import 'package:qnb_finansbank_w1_d3/dropdown_exmaple.dart';
import 'package:qnb_finansbank_w1_d3/ozet_uygulama/ozet_uygulama.dart';
import 'package:qnb_finansbank_w1_d3/screen_lifecycle.dart';
import 'package:qnb_finansbank_w1_d3/ucuncu_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => const ProfilePage())));
              },
              child: const Icon(Icons.person),
            ),
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          // ucuncu sayfaya yonlendirecek(teoride)
          // ElevatedButton(
          //     onPressed: (() {
          //       Navigator.push(context,
          //           MaterialPageRoute(builder: ((context) => UcunPage())));
          //     }),
          //     child: Text('ucuncu sayfa')),
          // Center(
          //   child: Text('Home screen'),
          // ),

          // datetimepicker widget example
          // DateTimePickerWidget(),

// dropdown example
          DropdownWidget(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.arrow_circle_right_outlined),
        onPressed: () => Navigator.push(context,
            MaterialPageRoute(builder: ((context) => const ScreenLifecyle()))),
      ),
    );
  }
}
