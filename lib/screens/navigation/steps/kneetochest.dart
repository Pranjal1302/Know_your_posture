import 'package:flutter/material.dart';

import '../yogasitting.dart';
import '../yogastanding.dart';

class knee extends StatelessWidget {
  const knee({Key? key}) : super(key: key);

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
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text('knee to chest pose',
                    style: TextStyle(color: Colors.white, fontSize: 30)),
                SizedBox(
                  height: 0.05 * height,
                ),
                Stack(children: [
                  SizedBox(
                    height: 0.35 * height,
                    width: 0.9 * width,
                    child: Image.asset('assets/sitting3.jpeg'),
                  ),
                ]),
                const Text(
                  '1.On the inhale, bend the right knee and interlock the fingers below the knee.  The left leg remains extended and on the mat/ground.',
                  style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255), fontSize: 15),
                  textAlign: TextAlign.justify,
                ),
                SizedBox(
                  height: 0.02 * height,
                ),
                const Text(
                  '2.On the exhale, roll the head and shoulders off the ground, bringing the nose towards the right knee.  Hold for 1-3 breaths.',
                  style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255), fontSize: 15),
                  textAlign: TextAlign.justify,
                ),
                SizedBox(
                  height: 0.02 * height,
                ),
                const Text(
                  '3.On the inhale, roll the head and shoulders back to the start position and release the right leg.  Repeat 3 times with the right leg and then three times with the left leg.',
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
