import 'package:flutter/material.dart';

class yogasitting extends StatefulWidget {
  const yogasitting({Key? key}) : super(key: key);

  @override
  State<yogasitting> createState() => _yogasittingState();
}

class _yogasittingState extends State<yogasitting> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
          padding: const EdgeInsets.fromLTRB(0, 60, 0, 0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('Sitting',
                    style: const TextStyle(color: Colors.white, fontSize: 30)),
                SizedBox(
                  height: 200,
                  width: 300,
                  child: Image.asset('assets/sitting1.jpeg'),
                ),
                SizedBox(
                  height: 200,
                  width: 300,
                  child: Image.asset('assets/sitting2.jpeg'),
                ),
                SizedBox(
                  height: 200,
                  width: 300,
                  child: Image.asset('assets/sitting3.jpeg'),
                ),
              ]),
        ));
  }
}
