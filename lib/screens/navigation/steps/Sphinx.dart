import 'package:flutter/material.dart';

import '../yogasitting.dart';
import '../yogastanding.dart';

class sphinx extends StatelessWidget {
  const sphinx({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
          decoration:
              const BoxDecoration(color: Color.fromARGB(255, 60, 67, 111)),
          child: Padding(
            padding: EdgeInsets.all(0.125 * width),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text('Sphinx Pose',
                    style: TextStyle(color: Colors.white, fontSize: 30)),
                SizedBox(
                  height: 0.005 * height,
                ),
                Stack(children: [
                  SizedBox(
                    height: 0.2 * height,
                    width: 0.9 * width,
                    child: Image.asset('assets/sitting2.jpeg'),
                  ),
                ]),
                const Text(
                  '1 Lie on your stomach. Lie on your stomach on your yoga mat and push your pubic bone towards the earth. Place your elbows directly underneath your shoulder blades. your right hip tucked.',
                  style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255), fontSize: 15),
                  textAlign: TextAlign.justify,
                ),
                SizedBox(
                  height: 0.015 * height,
                ),
                const Text(
                  '2.Press firmly into the legs. Press the tops of your feet onto the mat and engage your kneecaps and quadriceps.right foot. Do whichever one feels most comfortable.',
                  style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255), fontSize: 15),
                  textAlign: TextAlign.justify,
                ),
                SizedBox(
                  height: 0.02 * height,
                ),
                const Text(
                  '3.Lift the upper body. On an inhalation, press firmly into the palms of your hands and forearms and lift your upper body. Create space between your neck and shoulders and reach forward through the heart. Keep your gaze neutral and press yourself up to your comfort level.eft shoulder rooted in its socket. ',
                  style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255), fontSize: 15),
                  textAlign: TextAlign.justify,
                ),
                SizedBox(
                  height: 0.02 * height,
                ),
                const Text(
                  '4.Breathe and hold. Breathe deeply and consistently, sending your breath to any part of your body that feels tight. Let your forearms support you and hold the pose for up to one minute. Focus on your alignment and breath quality rather than the depth of your backbend. After practicing sphinx pose, you can move into a child’s pose to counter the backbend.',
                  style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255), fontSize: 15),
                  textAlign: TextAlign.justify,
                )
              ],
            ),
          )),
    );
  }
}
