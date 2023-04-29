import 'package:flutter/material.dart';

import '../yogasitting.dart';
import '../yogastanding.dart';

class hip extends StatelessWidget {
  const hip({Key? key}) : super(key: key);

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
                  'Standing Quadriceps/Hip Flexor Stretch',
                  style: TextStyle(color: Colors.white, fontSize: 30),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 0.015 * height,
                ),
                Stack(children: [
                  SizedBox(
                    height: 0.25 * height,
                    width: 0.9 * width,
                    child: Image.network(
                        'https://www.btod.com/blog/wp-content/uploads/2017/01/02-stretches-standing-quad-hip-flexor.jpg'),
                  ),
                ]),
                SizedBox(
                  height: 0.02 * height,
                ),
                const Text(
                  '1.While standing, hold onto to your desk for support and put one foot up on a chair behind you',
                  style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255), fontSize: 15),
                  textAlign: TextAlign.justify,
                ),
                SizedBox(
                  height: 0.02 * height,
                ),
                const Text(
                  '2.Depending on your flexibility, you can place the foot on the seat, arm, or back of the chair.',
                  style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255), fontSize: 15),
                  textAlign: TextAlign.justify,
                ),
                SizedBox(
                  height: 0.02 * height,
                ),
                const Text(
                  '3.Make sure that the foot on the ground is pointed forward with the knee bend slightly.',
                  style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255), fontSize: 15),
                  textAlign: TextAlign.justify,
                ),
                SizedBox(
                  height: 0.02 * height,
                ),
                const Text(
                  '4.Slowly push your pelvis forward while contracting your glutes.',
                  style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255), fontSize: 15),
                  textAlign: TextAlign.justify,
                ),
                SizedBox(
                  height: 0.02 * height,
                ),
                const Text(
                  '5.You should feel a stretch on the front of your hip and thigh.',
                  style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255), fontSize: 15),
                  textAlign: TextAlign.justify,
                ),
                SizedBox(
                  height: 0.02 * height,
                ),
                const Text(
                  '6.Hold this position for 15-20 seconds, then repeat 3-5 times on each side.',
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
