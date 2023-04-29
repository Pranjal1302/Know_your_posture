import 'package:flutter/material.dart';

import '../yogasitting.dart';
import '../yogastanding.dart';

class trunk extends StatelessWidget {
  const trunk({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
          decoration:
              const BoxDecoration(color: Color.fromARGB(255, 60, 67, 111)),
          child: Padding(
            padding: EdgeInsets.all(0.15 * width),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  'Standing trunk extension stretch',
                  style: TextStyle(color: Colors.white, fontSize: 30),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 0.03 * height,
                ),
                Stack(children: [
                  SizedBox(
                    height: 0.5 * height,
                    width: 0.9 * width,
                    child: Image.asset('assets/standing3.jpeg'),
                  ),
                ]),
                SizedBox(
                  height: 0.02 * height,
                ),
                const Text(
                  '1.Start with hands on low back.                  ',
                  style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255), fontSize: 15),
                  // textAlign: TextAlign.justify,
                ),
                SizedBox(
                  height: 0.02 * height,
                ),
                const Text(
                  '2.Slowly arch backward as far as you can without discomfort. ',
                  style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255), fontSize: 15),
                  textAlign: TextAlign.justify,
                ),
                SizedBox(
                  height: 0.02 * height,
                ),
                const Text(
                  '3.Hold only for three seconds, and return to starting position. Repeat five times.',
                  style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255), fontSize: 15),
                  textAlign: TextAlign.justify,
                ),
              ],
            ),
          )),
    );
  }
}
