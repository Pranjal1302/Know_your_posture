import 'package:flutter/material.dart';

import '../yogasitting.dart';
import '../yogastanding.dart';

class hamstring extends StatelessWidget {
  const hamstring({Key? key}) : super(key: key);

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
                const Text(
                  'Seated Hamstring Stretch',
                  style: TextStyle(color: Colors.white, fontSize: 30),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 0.05 * height,
                ),
                Stack(children: [
                  SizedBox(
                    height: 0.35 * height,
                    width: 0.9 * width,
                    child: Image.network(
                        "https://www.btod.com/blog/wp-content/uploads/2017/01/05-stretches-seated-hamstring.jpg"),
                  ),
                ]),
                const Text(
                  '1.While seated, rest your heel on the floor with your knee straight.',
                  style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255), fontSize: 15),
                  textAlign: TextAlign.justify,
                ),
                SizedBox(
                  height: 0.02 * height,
                ),
                const Text(
                  '2.Gently lean forward until a stretch is felt behind your knee/thigh.',
                  style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255), fontSize: 15),
                  textAlign: TextAlign.justify,
                ),
                SizedBox(
                  height: 0.02 * height,
                ),
                const Text(
                  '3.You should keep your low back straight to focus the stretch on the hamstring muscles.',
                  style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255), fontSize: 15),
                  textAlign: TextAlign.justify,
                ),
                SizedBox(
                  height: 0.02 * height,
                ),
                const Text(
                  '4.Hold the stretch for 20-30 seconds, then repeat 3-4 times on each leg.',
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
