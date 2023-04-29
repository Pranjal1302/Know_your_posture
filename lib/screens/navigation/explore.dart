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

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration:
            const BoxDecoration(color: Color.fromARGB(255, 60, 67, 111)),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.fromLTRB(
                0.025 * width, 0.07 * height, 0.025 * width, 0),
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Explore',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 30,
                    color: Color.fromARGB(255, 253, 220, 189),
                    fontWeight: FontWeight.w700,
                  ),
                  textAlign: TextAlign.left,
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 20,
                ),
                ExpansionTile(
                  title: Text(
                    "Why this app?",
                    selectionColor: Colors.white,
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 20,
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  backgroundColor: Color.fromARGB(255, 152, 171, 171),
                  collapsedBackgroundColor: Color.fromARGB(255, 152, 171, 171),
                  textColor: Colors.white,
                  collapsedTextColor: Colors.white,
                  iconColor: Colors.white,
                  collapsedIconColor: Colors.white,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "This app is made to help people who are new to yoga and want to learn the basics. It also helps people who are already into yoga and want to learn new poses.",
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 15,
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                ExpansionTile(
                  title: Text(
                    "Find Your Inspiration",
                    selectionColor: Colors.white,
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 20,
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  backgroundColor: Color.fromARGB(255, 193, 195, 157),
                  collapsedBackgroundColor: Color.fromARGB(255, 193, 195, 157),
                  textColor: Colors.white,
                  collapsedTextColor: Colors.white,
                  iconColor: Colors.white,
                  collapsedIconColor: Colors.white,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "This app is made to help people who are new to yoga and want to learn the basics. It also helps people who are already into yoga and want to learn new poses.",
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 15,
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                ExpansionTile(
                  title: Text(
                    "Women in Health",
                    selectionColor: Colors.white,
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 20,
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  backgroundColor: Color.fromARGB(255, 236, 186, 139),
                  collapsedBackgroundColor: Color.fromARGB(255, 236, 186, 139),
                  textColor: Colors.white,
                  collapsedTextColor: Colors.white,
                  iconColor: Colors.white,
                  collapsedIconColor: Colors.white,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "This app is made to help people who are new to yoga and want to learn the basics. It also helps people who are already into yoga and want to learn new poses.",
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 15,
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    )
                  ],
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
          selectedIndex: 1,
        ),
      ),
    );
  }
}
