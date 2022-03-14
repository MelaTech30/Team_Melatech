import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:melatech/launchpage.dart';
// ignore: unused_import
import 'package:melatech/splash.dart';

// ignore: unused_import
import 'homepage.dart';

// import 'accountpage.dart';

// import 'launchpage.dart';
// import 'loginpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Melatech',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AnimatedSplashScreen(
          splash: SizedBox(
            width: 500,
            height: 500,
            child: Image.asset(
              'image/yet.png',
              // width: 500,
              // height: 500,
            ),
          ),
          duration: 2000,
          splashTransition: SplashTransition.rotationTransition,
          backgroundColor: const Color(0xFF4e055a),
          nextScreen: const LaunchPage()),
    );
  }
}
