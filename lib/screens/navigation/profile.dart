import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:yoga/screens/navigation/report.dart';

import '../home/home.dart';
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
      // body: Container(
      //   back
      //   // androidsmall5kUX (1:193)
      //   width: double.infinity,
      //   height: 840,
      //   decoration: BoxDecoration(
      //     color: Color(0xb72e87ad),
      //   ),
      //   child: Stack(
      //     children: [
      //       Positioned(
      //         // androidsmall6ScF (28:60)
      //         left: 0,
      //         top: 0,
      //         child: Container(
      //           padding: EdgeInsets.fromLTRB(15, 26, 0, 0),
      //           width: 390,
      //           height: 840,
      //           decoration: const BoxDecoration(
      //             color: Color(0xffffffff),
      //             image: DecorationImage(
      //               fit: BoxFit.cover,
      //               image: NetworkImage(
      //                   'https://www.google.com/url?sa=i&url=https%3A%2F%2Funsplash.com%2Fs%2Fphotos%2Fblack&psig=AOvVaw06ldpmZeRycQmV-XGmdtdD&ust=1674562270694000&source=images&cd=vfe&ved=0CA8QjRxqFwoTCKjkvv_U3fwCFQAAAAAdAAAAABAE'),
      //             ),
      //           ),
      //           child: Column(
      //             crossAxisAlignment: CrossAxisAlignment.start,
      //             children: [
      //               Container(
      //                 // dashboard59R (28:62)
      //                 margin: EdgeInsets.fromLTRB(0, 0, 0, 226),
      //                 width: double.infinity,
      //                 child: Text(
      //                   'DASHBOARD',
      //                   textAlign: TextAlign.center,
      //                 ),
      //               ),
      //               Container(
      //                 // autogroupnonfkFZ (NnSLLsTCtriExVvwSGNonF)
      //                 margin: EdgeInsets.fromLTRB(0, 0, 0, 23),
      //                 padding: EdgeInsets.fromLTRB(9, 6, 9, 121.5),
      //                 width: 329,
      //                 decoration: BoxDecoration(
      //                   color: Color(0xff111111),
      //                   borderRadius: BorderRadius.circular(15),
      //                 ),
      //                 child: Column(
      //                   crossAxisAlignment: CrossAxisAlignment.start,
      //                   children: [
      //                     Container(
      //                       // notificationsEgX (28:64)
      //                       margin: EdgeInsets.fromLTRB(0, 0, 0, 5.5),
      //                       width: double.infinity,
      //                       child: Text(
      //                         'NOTIFICATIONS',
      //                         textAlign: TextAlign.center,
      //                       ),
      //                     ),
      //                   ],
      //                 ),
      //               ),
      //               Container(
      //                 // autogroup95jmXQj (NnSLYccduZTVciDSbz95jm)
      //                 width: 356,
      //                 height: 185,
      //                 child: Stack(
      //                   children: [
      //                     Positioned(
      //                       // rectangle16sDh (28:112)
      //                       left: 0,
      //                       top: 40,
      //                       child: Align(
      //                         child: SizedBox(
      //                           width: 329,
      //                           height: 52,
      //                           child: Container(
      //                             decoration: BoxDecoration(
      //                               borderRadius: BorderRadius.circular(15),
      //                               color: Color(0xffc0c0d2),
      //                             ),
      //                           ),
      //                         ),
      //                       ),
      //                     ),
      //                     Positioned(
      //                       // rectangle17MPm (28:115)
      //                       left: 0,
      //                       top: 103,
      //                       child: Align(
      //                         child: SizedBox(
      //                           width: 329,
      //                           height: 52,
      //                           child: Container(
      //                             decoration: BoxDecoration(
      //                               borderRadius: BorderRadius.circular(15),
      //                               color: Color(0xffc0c0d2),
      //                             ),
      //                           ),
      //                         ),
      //                       ),
      //                     ),
      //                     Positioned(
      //                       // recommendedforyourrK (28:117)
      //                       left: 24,
      //                       top: 12,
      //                       child: Align(
      //                         child: SizedBox(
      //                           width: 187,
      //                           height: 28,
      //                           child: Text(
      //                             'RECOMMENDED FOR YOU',
      //                             textAlign: TextAlign.center,
      //                           ),
      //                         ),
      //                       ),
      //                     ),
      //                     const Positioned(
      //                       // yg14um (37:125)
      //                       left: 194,
      //                       top: 0,
      //                       child: Align(
      //                         child: SizedBox(
      //                           width: 99,
      //                           height: 98,
      //                         ),
      //                       ),
      //                     ),
      //                     const Positioned(
      //                       // exremovebgpreview1vh5 (37:129)
      //                       left: 244,
      //                       top: 55,
      //                       child: Align(
      //                         child: SizedBox(
      //                           width: 112,
      //                           height: 130,
      //                         ),
      //                       ),
      //                     ),
      //                   ],
      //                 ),
      //               ),
      //             ],
      //           ),
      //         ),
      //       ),
      //       Positioned(
      //         // androidsmall71iX (45:38)
      //         left: 0,
      //         top: 0,
      //         child: Container(
      //           width: 360,
      //           height: 840,
      //           decoration: const BoxDecoration(
      //             color: Color(0xffffffff),
      //             image: DecorationImage(
      //               fit: BoxFit.cover,
      //               image: NetworkImage(
      //                   'https://www.google.com/url?sa=i&url=https%3A%2F%2Funsplash.com%2Fs%2Fphotos%2Fblack&psig=AOvVaw06ldpmZeRycQmV-XGmdtdD&ust=1674562270694000&source=images&cd=vfe&ved=0CA8QjRxqFwoTCKjkvv_U3fwCFQAAAAAdAAAAABAE'),
      //             ),
      //           ),
      //           child: Column(
      //             crossAxisAlignment: CrossAxisAlignment.center,
      //             children: [
      //               Container(
      //                 // autogroupax3rf2P (NnSRx3SikLXHJGJfWVAx3R)
      //                 padding: EdgeInsets.fromLTRB(26, 39, 26, 30),
      //                 width: double.infinity,
      //                 child: Column(
      //                   crossAxisAlignment: CrossAxisAlignment.center,
      //                   children: [
      //                     Container(
      //                       // autogroupf5fuZtT (NnSMD1gKj75C92zMBpf5Fu)
      //                       margin: EdgeInsets.fromLTRB(0, 0, 0, 29),
      //                       padding: EdgeInsets.fromLTRB(93.5, 28, 20, 29.4),
      //                       width: double.infinity,
      //                       decoration: BoxDecoration(
      //                         border: Border.all(color: Color(0xff000000)),
      //                         color: Color(0xffd1f5ff),
      //                         borderRadius: BorderRadius.circular(10),
      //                         boxShadow: [
      //                           BoxShadow(
      //                             color: Color(0x3f000000),
      //                             offset: Offset(0, 4),
      //                             blurRadius: 2,
      //                           ),
      //                           BoxShadow(
      //                             color: Color(0x3f000000),
      //                             offset: Offset(0, 4),
      //                             blurRadius: 2,
      //                           ),
      //                           BoxShadow(
      //                             color: Color(0x3f000000),
      //                             offset: Offset(0, 4),
      //                             blurRadius: 2,
      //                           ),
      //                         ],
      //                       ),
      //                       child: Row(
      //                         crossAxisAlignment: CrossAxisAlignment.center,
      //                         children: [
      //                           Container(
      //                             // notificationkxw (70:76)
      //                             margin: EdgeInsets.fromLTRB(0, 7.4, 29.5, 0),
      //                             child: Text(
      //                               'NOTIFICATION',
      //                               textAlign: TextAlign.center,
      //                             ),
      //                           ),
      //                           Container(
      //                             // imageremovebgpreview181Sqm (85:1029)
      //                             width: 45,
      //                             height: 45.6,
      //                           ),
      //                         ],
      //                       ),
      //                     ),
      //                     Container(
      //                       // autogrouprx4omt3 (NnSMQg1ZTMCmCqL2Rzrx4o)
      //                       margin: EdgeInsets.fromLTRB(0, 0, 0, 25),
      //                       width: double.infinity,
      //                       height: 143,
      //                       child: Row(
      //                         crossAxisAlignment: CrossAxisAlignment.center,
      //                         children: [
      //                           Container(
      //                             // autogroup8svmWKq (NnSMb13geFVQn2YUuU8SVm)
      //                             margin: EdgeInsets.fromLTRB(0, 0, 20, 0),
      //                             padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
      //                             width: 144,
      //                             height: double.infinity,
      //                             decoration: BoxDecoration(
      //                               border:
      //                                   Border.all(color: Color(0xff000000)),
      //                               borderRadius: BorderRadius.circular(10),
      //                               image: DecorationImage(
      //                                 fit: BoxFit.cover,
      //                                 image: NetworkImage(
      //                                     'https://www.google.com/url?sa=i&url=https%3A%2F%2Funsplash.com%2Fs%2Fphotos%2Fblack&psig=AOvVaw06ldpmZeRycQmV-XGmdtdD&ust=1674562270694000&source=images&cd=vfe&ved=0CA8QjRxqFwoTCKjkvv_U3fwCFQAAAAAdAAAAABAE'),
      //                               ),
      //                               boxShadow: [
      //                                 BoxShadow(
      //                                   color: Color(0x3f000000),
      //                                   offset: Offset(0, 4),
      //                                   blurRadius: 2,
      //                                 ),
      //                                 BoxShadow(
      //                                   color: Color(0x3f000000),
      //                                   offset: Offset(0, 4),
      //                                   blurRadius: 2,
      //                                 ),
      //                                 BoxShadow(
      //                                   color: Color(0x3f000000),
      //                                   offset: Offset(0, 4),
      //                                   blurRadius: 2,
      //                                 ),
      //                               ],
      //                             ),
      //                             child: Text(
      //                               'YOGA',
      //                               textAlign: TextAlign.center,
      //                             ),
      //                           ),
      //                           Container(
      //                             // autogroupwbdzFgj (NnSMezw2GH2BFqv9DawbdZ)
      //                             width: 144,
      //                             height: double.infinity,
      //                             decoration: BoxDecoration(
      //                               border:
      //                                   Border.all(color: Color(0xff000000)),
      //                               borderRadius: BorderRadius.circular(10),
      //                               image: DecorationImage(
      //                                 fit: BoxFit.cover,
      //                                 image: NetworkImage(
      //                                     'https://www.google.com/url?sa=i&url=https%3A%2F%2Funsplash.com%2Fs%2Fphotos%2Fblack&psig=AOvVaw06ldpmZeRycQmV-XGmdtdD&ust=1674562270694000&source=images&cd=vfe&ved=0CA8QjRxqFwoTCKjkvv_U3fwCFQAAAAAdAAAAABAE'),
      //                               ),
      //                               boxShadow: [
      //                                 BoxShadow(
      //                                   color: Color(0x3f000000),
      //                                   offset: Offset(0, 4),
      //                                   blurRadius: 2,
      //                                 ),
      //                                 BoxShadow(
      //                                   color: Color(0x3f000000),
      //                                   offset: Offset(0, 4),
      //                                   blurRadius: 2,
      //                                 ),
      //                                 BoxShadow(
      //                                   color: Color(0x3f000000),
      //                                   offset: Offset(0, 4),
      //                                   blurRadius: 2,
      //                                 ),
      //                               ],
      //                             ),
      //                             child: Stack(
      //                               children: [
      //                                 Positioned(
      //                                   // ellipse15vf (71:79)
      //                                   left: 0,
      //                                   top: 14,
      //                                   child: Align(
      //                                     child: SizedBox(
      //                                       width: 84,
      //                                       height: 22,
      //                                     ),
      //                                   ),
      //                                 ),
      //                                 Positioned(
      //                                   // exercisen4P (71:78)
      //                                   left: 12,
      //                                   top: 11,
      //                                   child: Align(
      //                                     child: SizedBox(
      //                                       width: 55,
      //                                       height: 27,
      //                                       child: Text(
      //                                         'EXERCISE',
      //                                         textAlign: TextAlign.center,
      //                                       ),
      //                                     ),
      //                                   ),
      //                                 ),
      //                               ],
      //                             ),
      //                           ),
      //                         ],
      //                       ),
      //                     ),
      //                     Container(
      //                       // autogroupzuu941u (NnSMnzhhWL5iDUfTqpZuu9)
      //                       width: double.infinity,
      //                       height: 220,
      //                       child: Stack(
      //                         children: [
      //                           Positioned(
      //                             // yogaPps (46:24)
      //                             left: 8.5,
      //                             top: 168,
      //                             child: Align(
      //                               child: SizedBox(
      //                                 width: 37,
      //                                 height: 27,
      //                                 child: Text(
      //                                   'YOGA',
      //                                   textAlign: TextAlign.center,
      //                                 ),
      //                               ),
      //                             ),
      //                           ),
      //                           Positioned(
      //                             // showmoreH9Z (46:25)
      //                             left: 14,
      //                             top: 192,
      //                             child: Align(
      //                               child: SizedBox(
      //                                 width: 68,
      //                                 height: 28,
      //                                 child: Text(
      //                                   'SHOW MORE ->',
      //                                   textAlign: TextAlign.center,
      //                                 ),
      //                               ),
      //                             ),
      //                           ),
      //                           Positioned(
      //                             // rectangle21M9R (69:11)
      //                             left: 0,
      //                             top: 0,
      //                             child: Align(
      //                               child: SizedBox(
      //                                 width: 308,
      //                                 height: 192,
      //                                 child: Container(
      //                                   decoration: BoxDecoration(
      //                                     borderRadius:
      //                                         BorderRadius.circular(10),
      //                                     border: Border.all(
      //                                         color: Color(0xff000000)),
      //                                     color: Color(0xfff8f3eb),
      //                                     boxShadow: [
      //                                       BoxShadow(
      //                                         color: Color(0x3f000000),
      //                                         offset: Offset(0, 4),
      //                                         blurRadius: 2,
      //                                       ),
      //                                       BoxShadow(
      //                                         color: Color(0x3f000000),
      //                                         offset: Offset(0, 4),
      //                                         blurRadius: 2,
      //                                       ),
      //                                       BoxShadow(
      //                                         color: Color(0x3f000000),
      //                                         offset: Offset(0, 4),
      //                                         blurRadius: 2,
      //                                       ),
      //                                     ],
      //                                   ),
      //                                 ),
      //                               ),
      //                             ),
      //                           ),
      //                           Positioned(
      //                             // dailyreportgraphwdR (73:80)
      //                             left: 92,
      //                             top: 4,
      //                             child: Align(
      //                               child: SizedBox(
      //                                 width: 133,
      //                                 height: 27,
      //                                 child: Text(
      //                                   'DAILY REPORT GRAPH',
      //                                   textAlign: TextAlign.center,
      //                                 ),
      //                               ),
      //                             ),
      //                           ),
      //                           Positioned(
      //                             // graphLvT (79:999)
      //                             left: 79.1159362793,
      //                             top: 31,
      //                             child: Align(
      //                               child: SizedBox(
      //                                 width: 160,
      //                                 height: 27,
      //                                 child: Text(
      //                                   'GRAPH',
      //                                   textAlign: TextAlign.center,
      //                                 ),
      //                               ),
      //                             ),
      //                           ),
      //                         ],
      //                       ),
      //                     ),
      //                   ],
      //                 ),
      //               ),
      //             ],
      //           ),
      //         ),
      //       ),
      //     ],
      //   ),
      // ),

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
