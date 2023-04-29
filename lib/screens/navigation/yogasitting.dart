import 'package:flutter/material.dart';
import 'package:yoga/screens/navigation/steps/Sphinx.dart';
import 'package:yoga/screens/navigation/steps/childpose.dart';
import 'package:yoga/screens/navigation/steps/kneetochest.dart';

class yogasitting extends StatefulWidget {
  const yogasitting({Key? key}) : super(key: key);

  @override
  State<yogasitting> createState() => _yogasittingState();
}

class _yogasittingState extends State<yogasitting> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sitting Yoga'),
        backgroundColor: Color.fromARGB(255, 51, 57, 94),
      ),
      body: Container(
          height: 1 * screenHeight,
          width: 1 * screenWidth,
          decoration:
              const BoxDecoration(color: Color.fromARGB(255, 60, 67, 111)),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 0.06 * screenHeight),
                InkWell(
                  child: SizedBox(
                    height: 0.25 * screenHeight,
                    width: 0.9 * screenWidth,
                    child: Image.asset('assets/sitting1.jpeg'),
                  ),
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const childpose()),
                  ),
                ),
                InkWell(
                  child: SizedBox(
                    height: 0.25 * screenHeight,
                    width: 0.9 * screenWidth,
                    child: Image.asset('assets/sitting2.jpeg'),
                  ),
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const sphinx()),
                  ),
                ),
                InkWell(
                  child: SizedBox(
                    height: 0.25 * screenHeight,
                    width: 0.9 * screenWidth,
                    child: Image.asset('assets/sitting3.jpeg'),
                  ),
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const knee()),
                  ),
                ),
              ])),
    );
  }
}
