import 'package:flutter/material.dart';
import 'package:melatech/food.dart';
// import 'rewards.dart';

// import 'start.dart';
// import 'package:melatech/waste.dart';
// import 'package:melatech/slider.dart';

// import 'recycle.dart';
// import 'schedulepage.dart';

// import 'homepage.dart';

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
      title: 'MelaTech',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const FoodPage(),
    );
  }
}

