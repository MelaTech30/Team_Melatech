import 'package:flutter/material.dart';

class Slow extends StatelessWidget {
  const Slow({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,
      body: ListView(
        children: const <Widget> [
          Text('I am very excited today'),
          SizedBox(height: 50,),
            Text('Molecules are two or more atoms of either the same or different elments.'),
        ],
      ),
      
    );
  }
}