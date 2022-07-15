import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_sigin/screens/signin_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Firebase Sign',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SignInScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
