import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:yoga/main.dart';
import 'package:yoga/screens/home/user_list.dart';
import 'package:yoga/screens/navigation/explore.dart';
import 'package:yoga/screens/navigation/profile.dart';
import 'package:yoga/screens/wrapper.dart';
import 'package:yoga/services/auth.dart';
import 'package:yoga/services/database.dart';
import 'package:provider/provider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:yoga/models/Users.dart';

import '../navigation/report.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
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
    return StreamProvider<List<Users>>.value(
      value: DatabaseService(uid: '').users,
      initialData: const <Users>[],
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 0, 0, 0),
        bottomNavigationBar: Container(
          color: Color.fromARGB(255, 255, 255, 255),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: GNav(
              onTabChange: (index) {
                _navigateToPage(context, index);
              },
              rippleColor: Color.fromARGB(255, 255, 255, 255)!,
              gap: 8,
              padding: EdgeInsets.all(16),
              backgroundColor: Color.fromARGB(255, 255, 255, 255),
              color: Color.fromARGB(255, 0, 0, 0),
              activeColor: Color.fromARGB(255, 255, 255, 255),
              tabs: const <GButton>[
                GButton(
                  icon: Icons.home,
                  text: 'Home',
                  backgroundColor: Color.fromARGB(255, 152, 171, 171),
                ),
                GButton(
                  icon: Icons.search,
                  text: 'Explore',
                  backgroundColor: Color.fromARGB(255, 152, 171, 171),
                ),
                GButton(
                  icon: Icons.add_circle_outline,
                  text: 'Report',
                  backgroundColor: Color.fromARGB(255, 152, 171, 171),
                ),
                GButton(
                  icon: Icons.person,
                  text: 'Profile',
                  backgroundColor: Color.fromARGB(255, 152, 171, 171),
                ),
              ],
              selectedIndex: 0,
            ),
          ),
        ),
        // appBar: AppBar(
        //   title: const Text('Home'),
        //   backgroundColor: Color.fromARGB(255, 150, 245, 245),
        //   elevation: 0.0,
        //   actions: <Widget>[
        //     TextButton.icon(
        //       icon: const Icon(Icons.person),
        //       label: const Text('logout'),
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
