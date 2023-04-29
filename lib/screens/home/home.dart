import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:yoga/main.dart';
import 'package:yoga/screens/home/user_list.dart';
import 'package:yoga/screens/navigation/explore.dart';
import 'package:yoga/screens/navigation/notification.dart';
import 'package:yoga/screens/navigation/profile.dart';
import 'package:yoga/screens/navigation/yogapage.dart';
import 'package:yoga/screens/navigation/yogasitting.dart';
import 'package:yoga/screens/wrapper.dart';
import 'package:yoga/services/auth.dart';
import 'package:yoga/services/database.dart';
import 'package:provider/provider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:yoga/models/Users.dart';

import '../navigation/exercisepage.dart';
import '../navigation/report.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<double> weekly = [3.4, 5.4, 21.8, 4.45, 8.85];
  _navigateToPage(context, index) {
    switch (index) {
      case 0:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const Home()),
        );
        break;
      case 1:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const explore()),
        );
        break;
      case 2:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const Report()),
        );
        break;
      case 3:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const Profile()),
        );
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    FirebaseDatabase database = FirebaseDatabase.instance;
    DatabaseReference ref = FirebaseDatabase.instance.ref("test");
    Stream<DatabaseEvent> stream = ref.onValue;
    stream.listen((DatabaseEvent event) {
      print(event.snapshot.value);
    });
    return StreamProvider<List<Users>>.value(
      value: DatabaseService(uid: '').users,
      initialData: const <Users>[],
      child: Scaffold(
        extendBodyBehindAppBar: true,
        // appBar: AppBar(
        //   toolbarHeight: 0.09 * height,
        //   centerTitle: true,
        //   title: const Text(
        //     'Home',
        //   ),
        //   backgroundColor: Colors.transparent,
        //   elevation: 0,
        //   automaticallyImplyLeading: false,
        // ),
        body: SingleChildScrollView(
          child: Container(
            decoration:
                const BoxDecoration(color: Color.fromARGB(255, 60, 67, 111)),
            child: Padding(
              padding: EdgeInsets.fromLTRB(
                  0.025 * width, 0.07 * height, 0.025 * width, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Home',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 253, 220, 189),
                    ),
                  ),
                  SizedBox(
                    height: 0.025 * height,
                  ),
                  InkWell(
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6.0)),
                      // color: const Color.fromARGB(255, 128, 210, 227),
                      elevation: 50,
                      child: SizedBox(
                        height: 0.2789 * height,
                        width: 1 * width,
                        child: Container(
                          decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8.0))),
                          child: Stack(
                            children: [
                              Image.asset(
                                "assets/posture.jpg",
                                height: 0.2789 * height,
                                width: 1 * width,
                              ),
                              Padding(
                                padding: EdgeInsets.all(0.025 * width),
                                child: const Text(
                                  "Get your posture",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 40),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const notification()),
                    ),
                  ),
                  SizedBox(
                    height: 0.03 * height,
                  ),
                  SizedBox(
                    height: 0.35 * height,
                    width: 1 * width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          height: 0.35 * height,
                          width: 0.45 * width,
                          child: InkWell(
                            child: const Card(
                              elevation: 50,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'Yoga',
                                    style: TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Icon(
                                    Icons.accessibility_new,
                                    color: Colors.black,
                                    size: 100,
                                  ),
                                ],
                              ),
                            ),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const YogaPage()),
                              );
                            },
                          ),
                        ),
                        SizedBox(
                          height: 0.35 * height,
                          width: 0.45 * width,
                          child: InkWell(
                            child: const Card(
                              elevation: 50,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'Exercise',
                                    style: TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Icon(
                                    Icons.directions_run,
                                    color: Colors.black,
                                    size: 100,
                                  ),
                                ],
                              ),
                            ),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const ExercisePage()),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 0.025 * height,
                  ),
                  Card(
                    color: Color.fromARGB(255, 253, 220, 189),
                    elevation: 50,
                    child: SizedBox(
                      height: 250,
                      width: 400,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            'Daily Report',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          SizedBox(
                            height: 175,
                            child: Image.network(
                                "https://prd-api-aggregate.statcrunch.com/api/aggregation/documents/531754XHXWH?context=results_image&code=&extension=png"),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 60, 67, 111),
        bottomNavigationBar: Padding(
          padding: EdgeInsets.fromLTRB(
              0.06 * width, 0.01 * height, 0.06 * width, 0.01 * height),
          child: GNav(
            onTabChange: (index) {
              _navigateToPage(context, index);
            },
            rippleColor: const Color.fromARGB(255, 60, 67, 111),
            gap: 6,
            padding: const EdgeInsets.all(16),
            backgroundColor: const Color.fromARGB(255, 60, 67, 111),
            color: const Color.fromARGB(255, 172, 128, 255),
            activeColor: const Color.fromARGB(255, 60, 67, 111),
            tabs: const <GButton>[
              GButton(
                icon: Icons.home,
                backgroundColor: Color.fromARGB(255, 253, 220, 189),
              ),
              GButton(
                icon: Icons.search,
                // text: 'Explore',
                backgroundColor: Color.fromARGB(255, 253, 220, 189),
              ),
              GButton(
                icon: Icons.add_circle_outline,
                // text: 'Report',
                backgroundColor: Color.fromARGB(255, 253, 220, 189),
              ),
              GButton(
                icon: Icons.person,
                // text: 'Profile',
                backgroundColor: Color.fromARGB(255, 253, 220, 189),
              ),
            ],
            selectedIndex: 0,
          ),
        ),
        // appBar: AppBar(
        //   title: const Text('Home',
        //       style: TextStyle(
        //           color: Colors.black,
        //           fontSize: 30.0,
        //           fontWeight: FontWeight.bold)),
        //   backgroundColor: Color.fromARGB(255, 251, 251, 251),
        //   elevation: 0.0,
        //   actions: <Widget>[
        //     TextButton.icon(
        //       icon: const Icon(Icons.person, color: Colors.black),
        //       label:
        //           const Text('logout', style: TextStyle(color: Colors.black)),
        //       onPressed: () async {
        //         await AuthService().signOut();
        //         Navigator.push(
        //           context,
        //           MaterialPageRoute(builder: (context) => const Wrapper()),
        //         );
        //       },
        //     ),
        //   ],
        // ),
        // body: UserList(),
      ),
    );
  }
}
