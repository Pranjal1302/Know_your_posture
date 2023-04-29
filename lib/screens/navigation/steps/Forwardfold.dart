import 'package:flutter/material.dart';

import '../yogasitting.dart';
import '../yogastanding.dart';

class forwardfold extends StatefulWidget {
  const forwardfold({Key? key}) : super(key: key);

  @override
  State<forwardfold> createState() => _forwardfoldState();
}

class _forwardfoldState extends State<forwardfold> {
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
                const Text('Forward Fold',
                    style: TextStyle(color: Colors.white, fontSize: 30)),
                SizedBox(
                  height: 0.02 * height,
                ),
                Stack(children: [
                  SizedBox(
                    height: 0.30 * height,
                    width: 0.9 * width,
                    child: Image.asset('assets/standing2.jpeg'),
                  ),
                ]),
                SizedBox(
                  height: 0.01 * height,
                ),
                const Text(
                  '1.Begin in Tadasana (Mountain Pose) at the front of the mat with your hands at your hips.',
                  style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255), fontSize: 15),
                  textAlign: TextAlign.justify,
                ),
                SizedBox(
                  height: 0.01 * height,
                ),
                const Text(
                  '2.Bend your knees slightly and fold your torso over your legs, hingeing from the hips, not the lower back.',
                  style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255), fontSize: 15),
                  textAlign: TextAlign.justify,
                ),
                SizedBox(
                  height: 0.01 * height,
                ),
                const Text(
                  '3.Your hands may land next to your feet or on the ground in front of you. ',
                  style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255), fontSize: 15),
                  textAlign: TextAlign.justify,
                ),
                SizedBox(
                  height: 0.01 * height,
                ),
                const Text(
                  '4.Inhale and extend your chest to lengthen your spine. ',
                  style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255), fontSize: 15),
                  textAlign: TextAlign.justify,
                ),
                SizedBox(
                  height: 0.01 * height,
                ),
                const Text(
                  '5.Exhale and gently press both legs toward straight without hyperextending. Lift the kneecaps and gently spiral your upper, inner thighs back. ',
                  style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255), fontSize: 15),
                  textAlign: TextAlign.justify,
                ),
                SizedBox(
                  height: 0.01 * height,
                ),
                const Text(
                  '6.On an exhalation, extend your torso down without rounding your back. Lengthen your neck, extending the crown of your head toward the ground, while you draw your shoulders down your back toward your hips. ',
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
