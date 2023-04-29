import 'package:flutter/material.dart';
import 'package:yoga/screens/navigation/yogasitting.dart';
import 'package:yoga/screens/navigation/yogastanding.dart';

class YogaPage extends StatefulWidget {
  const YogaPage({Key? key}) : super(key: key);

  @override
  State<YogaPage> createState() => _YogaPageState();
}

class _YogaPageState extends State<YogaPage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
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
                const Text('Yoga',
                    style: TextStyle(color: Colors.white, fontSize: 30)),
                SizedBox(
                  height: 0.05 * height,
                ),
                InkWell(
                  child: Stack(children: [
                    SizedBox(
                      height: 0.35 * height,
                      width: 0.9 * width,
                      child: Image.asset('assets/yoga_standing.jpeg'),
                    ),
                    const Text(
                      '  Standing',
                      style: TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0), fontSize: 20),
                    ),
                  ]),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const yogastanding()),
                    );
                  },
                ),
                SizedBox(
                  height: 0.05 * height,
                ),
                InkWell(
                  child: Stack(children: [
                    SizedBox(
                      height: 0.35 * height,
                      width: 0.9 * width,
                      child: Image.asset('assets/yoga_sitting.jpeg'),
                    ),
                    Positioned(
                      top: 0.05 * height,
                      child: const Text(
                        '  Sitting',
                        style: TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0), fontSize: 20),
                      ),
                    ),
                  ]),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const yogasitting()),
                    );
                  },
                ),
              ],
            ),
          )),
    );
  }
}
