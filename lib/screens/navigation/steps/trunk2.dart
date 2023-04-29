import 'package:flutter/material.dart';

import '../yogasitting.dart';
import '../yogastanding.dart';

class trunk2 extends StatelessWidget {
  const trunk2({Key? key}) : super(key: key);

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
                  height: 0.02 * height,
                ),
                Stack(children: [
                  SizedBox(
                    height: 0.3 * height,
                    width: 0.9 * width,
                    child: Image.network(
                        'https://www.btod.com/blog/wp-content/uploads/2017/01/01-stretches-standing-trunk-extension.jpg'),
                  ),
                ]),
                SizedBox(
                  height: 0.02 * height,
                ),
                const Text(
                  '1.Stand with your feet shoulders width apart.',
                  style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255), fontSize: 15),
                  textAlign: TextAlign.justify,
                ),
                SizedBox(
                  height: 0.02 * height,
                ),
                const Text(
                  '2.Place your hands in the small of your back for support.',
                  style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255), fontSize: 15),
                  textAlign: TextAlign.justify,
                ),
                SizedBox(
                  height: 0.02 * height,
                ),
                const Text(
                  '3.Slowly lean backward increasing the arch of your lower back until you feel a mild stretch in the abdominal muscles and slight pressure in the lower back.',
                  style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255), fontSize: 15),
                  textAlign: TextAlign.justify,
                ),
                SizedBox(
                  height: 0.02 * height,
                ),
                const Text(
                  '4.You can perform this as a static stretch by holding for 15-20 seconds, then repeating it 3-5 times per session.',
                  style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255), fontSize: 15),
                  textAlign: TextAlign.justify,
                ),
                SizedBox(
                  height: 0.02 * height,
                ),
                const Text(
                  '5.To perform this as an active range of motion exercise, hold for only a few seconds, but perform 10 repetitions per session.',
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
