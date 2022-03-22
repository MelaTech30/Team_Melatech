import 'package:agritech_cycle/side_sheet.dart';
import 'package:flutter/material.dart';
// import 'package:agritech_cycle/options.dart';
// import 'dropdown.dart';

// import 'add.dart';
// import 'cart.dart';
// import 'package:ecocyle/food.dart';
// import 'rewards.dart';

// import 'start.dart';
// import 'package:agritech_cycle/waste.dart';
// import 'package:agritech_cycle/slider.dart';

// import 'recycle.dart';
// import 'schedulepage.dart';
// import 'homepage.dart';

// import 'accountpage.dart';
// import 'launchpage.dart';
// import 'loginpage.dart';
// import 'profile.dart';
// import 'veges.dart';

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
      title: 'agritech_cycle',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: const HomePage(),
      //  home: const VegesPage(),
      //  home: const WastePage(),
      //  home: const CartPage(),
      //  home: const OptionsPage(),
      //  home: const Profile(),
        // home: MyHomePage(),
        home: const SideSheet(),
    );
  }
}

