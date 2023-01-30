import 'package:flutter/material.dart';

class yogastanding extends StatefulWidget {
  const yogastanding({Key? key}) : super(key: key);

  @override
  State<yogastanding> createState() => _yogastandingState();
}

class _yogastandingState extends State<yogastanding> {
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
                Text('Standing',
                    style: const TextStyle(color: Colors.white, fontSize: 30)),
                const SizedBox(
                  height: 50,
                ),
                SizedBox(
                  height: 300,
                  width: 300,
                  child: Image.asset('assets/standing1.jpeg'),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 300,
                      width: 150,
                      child: Image.asset('assets/standing2.jpeg'),
                    ),
                    SizedBox(
                      height: 300,
                      width: 150,
                      child: Image.asset('assets/standing3.jpeg'),
                    ),
                  ],
                )
              ]),
        ));
  }
}
