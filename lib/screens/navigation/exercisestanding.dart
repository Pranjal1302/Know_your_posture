import 'package:flutter/material.dart';
import 'package:yoga/screens/navigation/steps/hip.dart';
import 'package:yoga/screens/navigation/steps/trunk2.dart';

class exestanding extends StatefulWidget {
  const exestanding({Key? key}) : super(key: key);

  @override
  State<exestanding> createState() => _exestandingState();
}

class _exestandingState extends State<exestanding> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Standing Exercise'),
        backgroundColor: Color.fromARGB(255, 51, 57, 94),
      ),
      body: Container(
          height: height,
          width: width,
          decoration:
              const BoxDecoration(color: Color.fromARGB(255, 60, 67, 111)),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 80,
                ),
                InkWell(
                  child: SizedBox(
                    height: 200,
                    width: 300,
                    child: Image.network(
                        "https://www.btod.com/blog/wp-content/uploads/2017/01/01-stretches-standing-trunk-extension.jpg"),
                  ),
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const trunk2()),
                  ),
                ),
                const SizedBox(
                  height: 80,
                ),
                InkWell(
                  child: SizedBox(
                    height: 200,
                    width: 300,
                    child: Image.network(
                        "https://www.btod.com/blog/wp-content/uploads/2017/01/02-stretches-standing-quad-hip-flexor.jpg"),
                  ),
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const hip()),
                  ),
                ),
              ])),
    );
  }
}
