import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_sigin/screens/signin_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 182, 9, 173),
        elevation: 0,
        title: const Text(
          "Home",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text("Logut"),
          onPressed: () {
            FirebaseAuth.instance.signOut().then((value) {
              print("Sigin out Sucses");
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const SignInScreen()));
            });
          },
        ),
      ),
    );
  }
}
