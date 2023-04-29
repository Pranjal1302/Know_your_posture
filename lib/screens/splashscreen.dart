// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:yoga/screens/wrapper.dart';

class splashscreen extends StatefulWidget {
  const splashscreen({Key? key}) : super(key: key);

  @override
  State<splashscreen> createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  @override
  void initState() {
    super.initState();
    _wrapper();
  }

  _wrapper() async {
    await Future.delayed(const Duration(seconds: 3));
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const Wrapper()),
    );
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        width: 1 * width,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/splashscreen.jpg"),
            fit: BoxFit.cover,
            opacity: 0.8,
          ),
        ),
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Image.asset("assets/splashscreen.jpg"),
            CircleAvatar(
              backgroundImage: AssetImage("assets/logo.jpeg"),
              radius: 50,
            ),
            Text(
              'Know Your Posture',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
