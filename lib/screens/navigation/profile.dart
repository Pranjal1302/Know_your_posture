import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:yoga/screens/navigation/myprofile.dart';
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
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
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
      //       label: const Text('logout', style: TextStyle(color: Colors.black)),
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
      body: Container(
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 60, 67, 111),
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(5, 60, 5, 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 10.0,
              ),
              const CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage("assets/profile.png"),
              ),
              const SizedBox(
                height: 10.0,
              ),
              const Text(
                'Name',
                style: TextStyle(
                    color: Color.fromARGB(255, 253, 220, 189),
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10.0,
              ),
              InkWell(
                  child: const Card(
                      elevation: 50,
                      color: Color.fromARGB(255, 253, 220, 189),
                      child: SizedBox(
                        height: 50,
                        width: 400,
                        child: Padding(
                          padding: EdgeInsets.all(11.0),
                          child: Text(
                            'My Profile',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 60, 67, 111),
                            ),
                          ),
                        ),
                      )),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const myprofile()),
                    );
                  }),
              const SizedBox(),
              const Card(
                  elevation: 50,
                  color: Color.fromARGB(255, 253, 220, 189),
                  child: SizedBox(
                    height: 50,
                    width: 400,
                    child: Padding(
                      padding: EdgeInsets.all(11.0),
                      child: Text(
                        'About Us',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 60, 67, 111),
                        ),
                      ),
                    ),
                  )),
              const SizedBox(),
              const Card(
                  elevation: 50,
                  color: Color.fromARGB(255, 253, 220, 189),
                  child: SizedBox(
                    height: 50,
                    width: 400,
                    child: Padding(
                      padding: EdgeInsets.all(11.0),
                      child: Text(
                        'Privacy Policy',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 60, 67, 111),
                        ),
                      ),
                    ),
                  )),
              const SizedBox(),
              const Card(
                  elevation: 50,
                  color: Color.fromARGB(255, 253, 220, 189),
                  child: SizedBox(
                    height: 50,
                    width: 400,
                    child: Padding(
                      padding: EdgeInsets.all(11.0),
                      child: Text(
                        'Restart Progress',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 60, 67, 111),
                        ),
                      ),
                    ),
                  )),
              const SizedBox(),
              InkWell(
                  child: const Card(
                      elevation: 50,
                      color: Color.fromARGB(255, 253, 220, 189),
                      child: SizedBox(
                        height: 50,
                        width: 400,
                        child: Padding(
                          padding: EdgeInsets.all(11.0),
                          child: Text(
                            'Logout',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 60, 67, 111),
                            ),
                          ),
                        ),
                      )),
                  onTap: () async {
                    await AuthService().signOut();
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Wrapper()),
                    );
                  }),
            ],
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
          selectedIndex: 3,
        ),
      ),
    );
  }
}
