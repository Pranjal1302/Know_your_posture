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
    return Scaffold(
      body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 166, 0, 255),
                Color.fromARGB(255, 182, 62, 182),
                Color.fromARGB(255, 124, 90, 158),
                Color.fromARGB(255, 72, 50, 144),
              ],
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(60.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text('Yoga',
                    style: TextStyle(color: Colors.white, fontSize: 30)),
                const SizedBox(
                  height: 50,
                ),
                InkWell(
                  child: Stack(children: [
                    SizedBox(
                      height: 300,
                      width: 300,
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
                const SizedBox(
                  height: 50,
                ),
                InkWell(
                  child: Stack(children: [
                    SizedBox(
                      height: 300,
                      width: 300,
                      child: Image.asset('assets/yoga_sitting.jpeg'),
                    ),
                    const Positioned(
                      top: 40,
                      child: Text(
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
