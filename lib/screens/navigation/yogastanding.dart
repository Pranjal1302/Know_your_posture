import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:yoga/screens/navigation/steps/Forwardfold.dart';
import 'package:yoga/screens/navigation/steps/triangle.dart';
import 'package:yoga/screens/navigation/steps/trunk.dart';

class yogastanding extends StatefulWidget {
  const yogastanding({Key? key}) : super(key: key);

  @override
  State<yogastanding> createState() => _yogastandingState();
}

class _yogastandingState extends State<yogastanding> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: AppBar(
          title: const Text('Standing Yoga'),
          backgroundColor: Color.fromARGB(255, 51, 57, 94),
        ),
        body: Container(
            decoration:
                const BoxDecoration(color: Color.fromARGB(255, 60, 67, 111)),
            child: Padding(
              padding: EdgeInsets.fromLTRB(0, 0.1 * screenHeight, 0, 0),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    InkWell(
                      child: SizedBox(
                        height: 0.3 * screenHeight,
                        width: 0.8 * screenWidth,
                        child: Image.asset('assets/standing1.jpeg'),
                      ),
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const triangle()),
                      ),
                    ),
                    SizedBox(
                      height: 0.04 * screenHeight,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          child: SizedBox(
                            height: 0.35 * screenHeight,
                            width: 0.35 * screenWidth,
                            child: Image.asset('assets/standing2.jpeg'),
                          ),
                          onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const forwardfold()),
                          ),
                        ),
                        SizedBox(
                          width: 0.04 * screenWidth,
                        ),
                        InkWell(
                          child: SizedBox(
                            height: 0.35 * screenHeight,
                            width: 0.36 * screenWidth,
                            child: Image.asset('assets/standing3.jpeg'),
                          ),
                          onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const trunk()),
                          ),
                        ),
                      ],
                    )
                  ]),
            ))); // Container
  }
}
