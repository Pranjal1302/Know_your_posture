import 'package:flutter/material.dart';

import '../yogasitting.dart';
import '../yogastanding.dart';

class figure extends StatelessWidget {
  const figure({Key? key}) : super(key: key);

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
                  'Seated Figure 4 Stretch',
                  style: TextStyle(color: Colors.white, fontSize: 30),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 0.03 * height,
                ),
                Stack(children: [
                  SizedBox(
                    height: 0.35 * height,
                    width: 0.9 * width,
                    child: Image.network(
                        "https://www.btod.com/blog/wp-content/uploads/2017/01/06-stretches-seated-figure-4.jpg"),
                  ),
                ]),
                const Text(
                  '1.Seated in a chair, cross one leg on top of the other so that your ankle is sitting over the opposite knee.',
                  style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255), fontSize: 15),
                  textAlign: TextAlign.justify,
                ),
                SizedBox(
                  height: 0.02 * height,
                ),
                const Text(
                  '2.Place one hand on the knee of the crossed leg.',
                  style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255), fontSize: 15),
                  textAlign: TextAlign.justify,
                ),
                SizedBox(
                  height: 0.02 * height,
                ),
                const Text(
                  '3.Gently lean your trunk forward while pressing gently on the crossed knee until you feel a mild to moderate stretch in the hip and buttock area.',
                  style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255), fontSize: 15),
                  textAlign: TextAlign.justify,
                ),
                SizedBox(
                  height: 0.02 * height,
                ),
                const Text(
                  '4.Hold the stretch for 15-20 seconds, then repeat 3-5 times on each side.',
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
