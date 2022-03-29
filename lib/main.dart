import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:melatech/Account/launchpage.dart';
// ignore: unused_import
import 'package:melatech/Account/splash.dart';


// ignore: unused_import
import 'homepage.dart';


// import 'accountpage.dart';

// import 'launchpage.dart';
// import 'loginpage.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final Future<FirebaseApp> _fbApp = Firebase.initializeApp();

  MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Melatech',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: FutureBuilder(
          future: _fbApp,
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              print('You have an error ${snapshot.error.toString()}');
              return const Text('Something went wrong!');
            } else if (snapshot.hasData) {
              // return const NewSignUp();
              return AnimatedSplashScreen(
                  splash: SizedBox(
                    width: 500,
                    height: 500,
                    child: Image.asset(
                      'image/yet.png',
                    ),
                  ),
                  duration: 2000,
                  splashTransition: SplashTransition.rotationTransition,
                  backgroundColor: Colors.green,
                  nextScreen: const LaunchPage());
            } else {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        ));
  }
}
