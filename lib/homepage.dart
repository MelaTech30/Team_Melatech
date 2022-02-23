

// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
         decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
            Color(0xFF4e055a),
            Color(0xFF4ccce8)
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          ),
        ),
        child: ListView(
          children: [
           const SizedBox(height:20),
            Card(
              clipBehavior: Clip.antiAlias,
              child: Image.asset('image/image2.png'),              
            ),
            const SizedBox(height:10),
            Padding(
              padding: const EdgeInsets.only(left:70, right: 70),
              child: FlatButton(onPressed: () {},
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5)
              ),
               color: const Color(0xFF4e055a),
              child: const Text('Waste Management', 
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
              ),
              ),
              ),
            ),
            const SizedBox(height:20),
            Padding(
              padding: const EdgeInsets.all(30),
              child: Card(
                clipBehavior: Clip.antiAlias,
                child: Image.asset('image/image3.png'),              
              ),
            ),
            const SizedBox(height:10),
            Padding(
              padding: const EdgeInsets.only(left:70, right: 70),
              child: FlatButton(onPressed: () {},
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5)
              ),
               color: const Color(0xFF4e055a),
              child: const Text('Farm Produce', 
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
              ),
              ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}