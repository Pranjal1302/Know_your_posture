import 'package:flutter/material.dart';

import '../yogasitting.dart';
import '../yogastanding.dart';

class seatedknee extends StatelessWidget {
  const seatedknee({Key? key}) : super(key: key);

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
                const Text('Seated Knee',
                    style: TextStyle(color: Colors.white, fontSize: 30)),
                SizedBox(
                  height: 0.05 * height,
                ),
                Stack(children: [
                  SizedBox(
                    height: 0.35 * height,
                    width: 0.9 * width,
                    child: Image.network(
                        "https://www.btod.com/blog/wp-content/uploads/2017/01/04-stretches-seated-knee-to-chest.jpg"),
                  ),
                ]),
                const Text(
                  '1.While sitting in a chair, raise one knee as if you are marching until you can reach it with your hands',
                  style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255), fontSize: 15),
                  textAlign: TextAlign.justify,
                ),
                SizedBox(
                  height: 0.02 * height,
                ),
                const Text(
                  '2.Use both hands to pull the bent knee up toward your chest until you feel a gentle stretch in the lower back and back of the hip.',
                  style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255), fontSize: 15),
                  textAlign: TextAlign.justify,
                ),
                SizedBox(
                  height: 0.02 * height,
                ),
                const Text(
                  '3.Your hands can be on top of your knee or behind your knee for comfort. ',
                  style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255), fontSize: 15),
                  textAlign: TextAlign.justify,
                ),
                SizedBox(
                  height: 0.02 * height,
                ),
                const Text(
                  '4.Hold this position for 15-20 seconds, then repeat 3-5 times on each side',
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
