import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:melatech/launchpage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigatetohome();
  }

  _navigatetohome() async {
    await Future.delayed(const Duration(milliseconds: 1500), () {});
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => const LaunchPage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: const Center(
        child: Text(
          'Splash',
          style: TextStyle(
              color: Colors.amber, fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),
    ));
  }
}
