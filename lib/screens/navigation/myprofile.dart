import 'package:flutter/material.dart';

class myprofile extends StatefulWidget {
  const myprofile({Key? key}) : super(key: key);

  @override
  State<myprofile> createState() => _myprofileState();
}

class _myprofileState extends State<myprofile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration:
            const BoxDecoration(color: Color.fromARGB(255, 60, 67, 111)),
        child: const Padding(
          padding: EdgeInsets.fromLTRB(5, 60, 5, 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 10.0,
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                'My Profile',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 50.0,
              ),
              Card(
                  elevation: 50,
                  color: Colors.greenAccent,
                  child: SizedBox(
                    height: 50,
                    width: 400,
                    child: Padding(
                      padding: EdgeInsets.all(11.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Username',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(
                            Icons.edit,
                            color: Colors.black,
                          ),
                        ],
                      ),
                    ),
                  )),
              SizedBox(),
              Card(
                  elevation: 50,
                  color: Colors.greenAccent,
                  child: SizedBox(
                    height: 50,
                    width: 400,
                    child: Padding(
                      padding: EdgeInsets.all(11.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Height',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(
                            Icons.edit,
                            color: Colors.black,
                          ),
                        ],
                      ),
                    ),
                  )),
              SizedBox(),
              Card(
                  elevation: 50,
                  color: Colors.greenAccent,
                  child: SizedBox(
                    height: 50,
                    width: 400,
                    child: Padding(
                      padding: EdgeInsets.all(11.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Weight',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(
                            Icons.edit,
                            color: Colors.black,
                          ),
                        ],
                      ),
                    ),
                  )),
              SizedBox(),
              Card(
                  elevation: 50,
                  color: Colors.greenAccent,
                  child: SizedBox(
                    height: 50,
                    width: 400,
                    child: Padding(
                      padding: EdgeInsets.all(11.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Age',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(
                            Icons.edit,
                            color: Colors.black,
                          ),
                        ],
                      ),
                    ),
                  )),
              SizedBox(),
              Card(
                  elevation: 50,
                  color: Colors.greenAccent,
                  child: SizedBox(
                    height: 50,
                    width: 400,
                    child: Padding(
                      padding: EdgeInsets.all(11.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Password',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(
                            Icons.edit,
                            color: Colors.black,
                          ),
                        ],
                      ),
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
