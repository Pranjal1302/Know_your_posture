import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:yoga/screens/navigation/report.dart';

import '../../services/auth.dart';
import '../home/home.dart';
import '../wrapper.dart';
import 'explore.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
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

    return Scaffold(
      appBar: AppBar(
        title: const Text('Home',
            style: TextStyle(
                color: Colors.black,
                fontSize: 30.0,
                fontWeight: FontWeight.bold)),
        backgroundColor: Color.fromARGB(255, 251, 251, 251),
        elevation: 0.0,
        actions: <Widget>[
          TextButton.icon(
            icon: const Icon(Icons.person, color: Colors.black),
            label: const Text('logout', style: TextStyle(color: Colors.black)),
            onPressed: () async {
              await AuthService().signOut();
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Wrapper()),
              );
            },
          ),
        ],
      ),
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
            selectedIndex: 3,
          ),
        ),
      ),
    );
  }
}
