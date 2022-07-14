import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../reusable_widgets/reusable_widget.dart';
import 'home_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController _passwordTextController = TextEditingController();
  final TextEditingController __emailTextController = TextEditingController();
  final TextEditingController __nameTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "Sign Up",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
          Color.fromARGB(255, 151, 5, 144),
          Color.fromARGB(255, 118, 11, 189),
          Color.fromARGB(255, 10, 167, 23),
        ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
        child: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 120, 20, 0),
          child: Column(
            children: <Widget>[
              const SizedBox(
                height: 20,
              ),
              reusableTextField("Enter Username", Icons.person_outline, false,
                  __nameTextController),
              const SizedBox(
                height: 20,
              ),
              reusableTextField("Enter Email Id", Icons.person_outline, false,
                 __emailTextController),
              const SizedBox(
                height: 20,
              ),
              reusableTextField("Enter Password", Icons.lock_outline, false,
                  _passwordTextController),
              const SizedBox(
                height: 20,
              ),
              signInSignUpButton(context, false, () {
                FirebaseAuth.instance
                    .createUserWithEmailAndPassword(
                        email: __emailTextController.text,
                        password: _passwordTextController.text)
                    .then((value) {
                  print("Created New Account");
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HomeScreen()));
                }).onError((error, stackTrace) {
                  print("error ${error.toString()}");
                });
              }),
            ],
          ),
        )),
      ),
    );
  }
}
