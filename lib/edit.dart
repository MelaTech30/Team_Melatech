import 'package:flutter/material.dart';

class Edit extends StatelessWidget {
  const Edit({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: ListView(
         children: <Widget> [
          const Text('I love You Babe'),
         ]
      ),
    );
  }
}