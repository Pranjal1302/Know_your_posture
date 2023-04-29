import 'package:flutter/material.dart';

import '../yogasitting.dart';
import '../yogastanding.dart';

class childpose extends StatelessWidget {
  const childpose({Key? key}) : super(key: key);

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
                const Text('Child Pose',
                    style: TextStyle(color: Colors.white, fontSize: 30)),
                SizedBox(
                  height: 0.05 * height,
                ),
                Stack(children: [
                  SizedBox(
                    height: 0.35 * height,
                    width: 0.9 * width,
                    child: Image.asset('assets/sitting1.jpeg'),
                  ),
                ]),
                const Text(
                  '1.Engage your right thigh muscles and draw your right femur into its socket. Extend your right hand toward the front of the room, keeping your right hip tucked.',
                  style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255), fontSize: 15),
                  textAlign: TextAlign.justify,
                ),
                SizedBox(
                  height: 0.02 * height,
                ),
                const Text(
                  '2.Lower your right hand down, onto your shin or ankle. If you are more open, bring your right hand to the floor on the inside or on the right foot. Do whichever one feels most comfortable.',
                  style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255), fontSize: 15),
                  textAlign: TextAlign.justify,
                ),
                SizedBox(
                  height: 0.02 * height,
                ),
                const Text(
                  '3.The left shoulder stacks on top of the right one as you open your chest, reaching your left fingertips toward the ceiling while keeping your left shoulder rooted in its socket. ',
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
