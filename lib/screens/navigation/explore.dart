import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:yoga/screens/home/home.dart';
import 'package:yoga/screens/navigation/profile.dart';
import 'package:yoga/screens/navigation/report.dart';

class explore extends StatefulWidget {
  const explore({Key? key}) : super(key: key);

  @override
  State<explore> createState() => _exploreState();
}

class _exploreState extends State<explore> {
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

  _buildList() {
    return ListView.builder(
      itemCount: 3,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text('Explore $index'),
          leading: const Icon(Icons.search),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Report()),
            );
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildList(),
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
            selectedIndex: 1,
          ),
        ),
      ),
    );
  }
}
