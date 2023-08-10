import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:yoga/screens/navigation/profile.dart';

import '../home/home.dart';
import 'explore.dart';

class Report extends StatefulWidget {
  const Report({Key? key}) : super(key: key);

  @override
  State<Report> createState() => _ReportState();
}

class _ReportState extends State<Report> {
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

    _buildList() {
      return ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Text('Report $index'),
            ),
          );
        },
      );
    }

    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration:
            const BoxDecoration(color: Color.fromARGB(255, 60, 67, 111)),
        child: SingleChildScrollView(
          child: Padding(
              padding: EdgeInsets.fromLTRB(
                  0.025 * width, 0.07 * height, 0.025 * width, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const Text(
                    'Report',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 253, 220, 189),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  // const Card(
                  //   color: Color.fromARGB(255, 229, 223, 149),
                  //   elevation: 50,
                  //   child: SizedBox(
                  //     height: 250,
                  //     width: 400,
                  //     child: Column(
                  //       mainAxisAlignment: MainAxisAlignment.start,
                  //       crossAxisAlignment: CrossAxisAlignment.center,
                  //       children: <Widget>[
                  //         SizedBox(
                  //           height: 10,
                  //         ),
                  //         Text(
                  //           'Weekly Report',
                  //           style: TextStyle(
                  //             fontSize: 20,
                  //             fontWeight: FontWeight.bold,
                  //             color: Colors.black,
                  //           ),
                  //         ),
                  //         SizedBox(
                  //           height: 20,
                  //         ),
                  //       ],
                  //     ),
                  //   ),
                  // ),
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
                          // const Text(
                          //   'Weekly Report',
                          //   style: TextStyle(
                          //     fontSize: 20,
                          //     fontWeight: FontWeight.bold,
                          //     color: Colors.black,
                          //   ),
                          // ),
                          const SizedBox(
                            height: 20,
                          ),
                          SizedBox(
                            height: 175,
                            child: Image.asset('assets/weekg.jpeg'),
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Card(
                      elevation: 50,
                      color: Color.fromARGB(255, 253, 220, 189),
                      child: SizedBox(
                        height: 50,
                        width: 400,
                        child: Padding(
                          padding: EdgeInsets.all(11.0),
                          child: Text(
                            'Q. How useful is this app?',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      )),
                  const SizedBox(
                    height: 20,
                  ),
                  const Card(
                      elevation: 50,
                      color: Color.fromARGB(255, 253, 220, 189),
                      child: SizedBox(
                        height: 75,
                        width: 400,
                        child: Padding(
                          padding: EdgeInsets.all(12.0),
                          child: Text(
                            'Q. To whom would you recommend this app?',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      )),
                  const SizedBox(
                    height: 20,
                  ),
                  Card(
                      elevation: 50,
                      color: Color.fromARGB(255, 253, 220, 189),
                      child: SizedBox(
                        height: 195,
                        width: 400,
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Column(
                            children: [
                              const Text(
                                'Q. Help us improve this app by giving us your feedback',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const TextField(
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: 'Feedback',
                                ),
                              ),
                              TextButton(
                                onPressed: () => {
                                  print('You pressed the button.'),
                                },
                                child: const Text(
                                  'Submit',
                                ),
                              ),
                            ],
                          ),
                        ),
                      ))
                ],
              )),
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
          selectedIndex: 2,
        ),
      ),
    );
  }
}
