import 'package:flutter/material.dart';
import 'package:yoga/screens/navigation/steps/figure.dart';
import 'package:yoga/screens/navigation/steps/hamstring.dart';
import 'package:yoga/screens/navigation/steps/seatedknee.dart';

class exesitting extends StatefulWidget {
  const exesitting({Key? key}) : super(key: key);

  @override
  State<exesitting> createState() => _exesittingState();
}

class _exesittingState extends State<exesitting> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sitting Exercise'),
        backgroundColor: Color.fromARGB(255, 51, 57, 94),
      ),
      body: Container(
          height: 1 * height,
          width: 1 * width,
          decoration:
              const BoxDecoration(color: Color.fromARGB(255, 60, 67, 111)),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 0.07 * height,
                ),
                InkWell(
                  child: SizedBox(
                    height: 0.2 * height,
                    width: 0.8 * width,
                    child: Image.network(
                        "https://www.btod.com/blog/wp-content/uploads/2017/01/04-stretches-seated-knee-to-chest.jpg"),
                  ),
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const seatedknee()),
                  ),
                ),
                SizedBox(
                  height: 0.05 * height,
                ),
                InkWell(
                  child: SizedBox(
                    height: 0.2 * height,
                    width: 0.8 * width,
                    child: Image.network(
                        "https://www.btod.com/blog/wp-content/uploads/2017/01/05-stretches-seated-hamstring.jpg"),
                  ),
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const hamstring()),
                  ),
                ),
                SizedBox(
                  height: 0.05 * height,
                ),
                InkWell(
                  child: SizedBox(
                    height: 0.2 * height,
                    width: 0.8 * width,
                    child: Image.network(
                        "https://www.btod.com/blog/wp-content/uploads/2017/01/06-stretches-seated-figure-4.jpg"),
                  ),
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const figure()),
                  ),
                ),
              ])),
    );
  }
}
