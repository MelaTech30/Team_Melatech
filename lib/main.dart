import 'package:flutter/material.dart';
import 'package:ecocycle/options.dart';
// import 'dropdown.dart';

import 'cart.dart';
// import 'package:ecocyle/food.dart';
// import 'rewards.dart';

// import 'start.dart';
// import 'package:ecocycle/waste.dart';
// import 'package:ecocycle/slider.dart';

// import 'recycle.dart';
// import 'schedulepage.dart';
import 'homepage.dart';

// import 'accountpage.dart';
// import 'launchpage.dart';
// import 'loginpage.dart';
import 'veges.dart';

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
      title: 'ecocycle',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
      //  home: const VegesPage(),
      //  home: const WastePage(),
      //  home: const CartPage(),
      //  home: const OptionsPage(),
    );
  }
}

