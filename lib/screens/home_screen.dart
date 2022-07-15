// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_sigin/screens/signin_screen.dart';
import 'package:firebase_sigin/screens/signin_screen.dart';
import 'package:firebase_sigin/widgets/custom_clipper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../utils/color_utils.dart';
import '../widgets/card_items.dart';
import '../widgets/card_main.dart';
import '../widgets/card_section.dart';
import 'gestur.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    double statusBarHeight = MediaQuery.of(context).padding.top;
    return Scaffold(
      backgroundColor: Constants.backgroundColor,
      body: Stack(
        children: <Widget>[
          ClipPath(
            clipper: MyCustomClipper(clipType: ClipType.bottom),
            child: Container(
              color: const Color.fromARGB(255, 7, 206, 196),
              height: Constants.headerHeight + statusBarHeight,
            ),
          ),
          Positioned(
            right: -45,
            top: -30,
            child: ClipOval(
              child: Container(
                color: Colors.black.withOpacity(0.05),
                height: 220,
                width: 220,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(Constants.paddingSide),
            child: ListView(
              children: <Widget>[
                Row(
                  children: const <Widget>[
                    Expanded(
                      child: Text(
                        "Selamat Datang,\nPasien",
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w900,
                            color: Colors.white),
                      ),
                    ),
                    CircleAvatar(
                        radius: 26.0,
                        backgroundImage:
                            AssetImage('assets/icons/profile_picture.png'))
                  ],
                ),
           
                const SizedBox(height: 50),

                // Main Cards - Heartbeat and Blood Pressure
                SizedBox(
                  height: 140,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      CardMain(
                        image: const AssetImage('assets/icons/heartbeat.png'),
                        title: "Hearbeat",
                        value: "66",
                        unit: "bpm",
                        color: Constants.darkBlue,
                      ),
                      CardMain(
                          image: const AssetImage('assets/icons/blooddrop.png'),
                          title: "Blood Pressure",
                          value: "110/70",
                          unit: "mmHg",
                          color: Constants.lightYellow)
                    ],
                  ),
                ),

                // Section Cards - Daily Medication
                const SizedBox(height: 50),

                Text(
                  "JADWAL MINUM OBAT",
                  style: TextStyle(
                    color: Constants.textPrimary,
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 20),

                SizedBox(
                    height: 125,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: const <Widget>[
                        CardSection(
                          image: AssetImage('assets/icons/capsule.png'),
                          title: "Antasida",
                          value: "2",
                          unit: "pills",
                          time: "6-7AM",
                          isDone: false,
                        ),
                        CardSection(
                          image: AssetImage('assets/icons/syringe.png'),
                          title: "Bintang 7",
                          value: "1",
                          unit: "shot",
                          time: "8-9AM",
                          isDone: true,
                        )
                      ],
                    )),

                const SizedBox(height: 50),

                // Scheduled Activities
                Text(
                  "JADWAL AKTIPITAS",
                  style: TextStyle(
                      color: Constants.textPrimary,
                      fontSize: 13,
                      fontWeight: FontWeight.bold),
                ),

                const SizedBox(height: 20),
                ListView(
                  scrollDirection: Axis.vertical,
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  children: <Widget>[
                    CardItems(
                      image: Image.asset(
                        'assets/icons/Walking.png',
                      ),
                      title: "Walking",
                      value: "750",
                      unit: "steps",
                      color: Constants.lightYellow,
                      progress: 30,
                    ),
                    CardItems(
                      image: Image.asset(
                        'assets/icons/Swimming.png',
                      ),
                      title: "Swimming",
                      value: "30",
                      unit: "mins",
                      color: Constants.lightBlue,
                      progress: 0,
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
    //  GestureDetector(
    //               onTap: () => Navigator.push(
    //                 context,
    //                 CustomPageRouteBuilder(
    //                     pageBuilder: (context, animation, secondaryAnimation) =>
    //                         const SignInScreen()
    //                ),),
    //             ),


        // child: ElevatedButton(
        //   child: const Text("Logut"),
        //   onPressed: () {
        //     FirebaseAuth.instance.signOut().then((value) {
        //       print("Sigin out Sucses");
        //       Navigator.push(
        //           context,
        //           MaterialPageRoute(
        //               builder: (context) => const SignInScreen()));
        //     });
        //   },