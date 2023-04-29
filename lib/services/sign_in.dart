import 'package:flutter/material.dart';
import 'package:yoga/screens/authenticate/registration.dart';
import 'package:yoga/services/auth.dart';
import 'package:yoga/shared/loading.dart';

import '../profile_screen.dart';
import '../screens/home/home.dart';

class SignIn extends StatefulWidget {
  final Function toggleView;
  const SignIn({Key? key, required this.toggleView}) : super(key: key);
  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final AuthService _auth = AuthService();
  final _formKey = GlobalKey<FormState>();
  bool loading = false;

  String email = '';
  String password = '';
  String error = '';

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: 1 * height,
          decoration: const BoxDecoration(
              // gradient: LinearGradient(
              //   colors: [
              //     Color.fromARGB(255, 166, 0, 255),
              //     Color.fromARGB(255, 182, 62, 182),
              //     Color.fromARGB(255, 124, 90, 158),
              //     Color.fromARGB(255, 72, 50, 144),
              //   ],
              //   begin: Alignment.topRight,
              //   end: Alignment.bottomLeft,
              // ),
              color: Color.fromARGB(255, 60, 67, 111)),
          padding: EdgeInsets.symmetric(
              vertical: 0.2 * height, horizontal: 0.05 * width),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Log In",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Color.fromARGB(255, 253, 220, 189),
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                TextFormField(
                  validator: (value) =>
                      value!.isEmpty ? 'Enter an email' : null,
                  onChanged: (value) {
                    setState(() => email = value);
                  },
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    labelStyle: TextStyle(color: Colors.white),
                    hintText: "Enter your email",
                    hintStyle: TextStyle(color: Colors.white),
                    prefixIcon: Icon(Icons.email, color: Colors.white),
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  validator: (value) => value!.length < 6
                      ? 'Enter a password 6+ chars long'
                      : null,
                  onChanged: (value) {
                    setState(() => password = value);
                  },
                  obscureText: true,
                  decoration: const InputDecoration(
                    hintText: "Enter your password",
                    hintStyle: TextStyle(color: Colors.white),
                    prefixIcon: Icon(Icons.security, color: Colors.white),
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(
                  height: 18,
                ),
                SizedBox(
                  height: 50,
                  child: ElevatedButton(
                      onPressed: () async {
                        if (_formKey.currentState!.validate()) {
                          setState(() {
                            loading = true;
                          });
                          dynamic result = await _auth
                              .signInWithEmailAndPassword(email, password);
                          if (result == null) {
                            setState(() {
                              error =
                                  'Could not sign in with those credentials';
                              loading = false;
                            });
                          } else {
                            setState(() => error = '');
                            // ignore: use_build_context_synchronously
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Home()),
                            );
                          }
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        primary: const Color.fromARGB(255, 253, 220, 189),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6.0),
                        ),
                      ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Login',
                            style: TextStyle(
                                color: Color.fromARGB(255, 60, 67, 111),
                                fontSize: 20),
                          ),
                        ],
                      )),
                ),
                TextButton.icon(
                  onPressed: () {
                    widget.toggleView();
                  },
                  label: const Text('Don\'t have an account? Register',
                      style: TextStyle(
                          color: Colors.white, fontStyle: FontStyle.italic)),
                  icon: const Icon(Icons.app_registration, color: Colors.white),
                ),
                Text(error,
                    style: const TextStyle(
                        color: Color.fromARGB(255, 255, 156, 149),
                        fontSize: 14.0)),
                const SizedBox(
                  height: 70,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
