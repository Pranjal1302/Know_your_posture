import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';

class notification extends StatefulWidget {
  const notification({Key? key}) : super(key: key);

  @override
  State<notification> createState() => _notificationState();
}

class _notificationState extends State<notification> {
  @override
  Widget build(BuildContext context) {
    final _auth = FirebaseAuth.instance;
    final ref = FirebaseDatabase.instance.ref('test');
    return Scaffold(
      appBar: AppBar(
        title: const Text("Position"),
        backgroundColor: const Color.fromARGB(255, 60, 67, 111),
      ),
      body: Container(
        child: Column(
          children: [
            Expanded(
                child: FirebaseAnimatedList(
              query: ref,
              defaultChild: Text("Loading..."),
              itemBuilder: (context, snapshot, animation, index) {
                print(snapshot.child("angle").value);
                var angle = snapshot.child('Flex_angle').value;
                // var flex = angle!.['Flex_angle'];
                // print(flex);
                print(angle);

                if (angle != null) {
                  // if (angle > 12) {}
                }
                return ListTile(
                  title: Text(angle == 10 ? "Good" : "Bad",
                      style: TextStyle(
                          color: angle == 10 ? Colors.green : Colors.red,
                          fontSize: 20)),
                  subtitle: Text(snapshot.child('Flex_angle').value.toString()),
                );
              },
            ))
          ],
        ),
      ),
    );
  }
}
