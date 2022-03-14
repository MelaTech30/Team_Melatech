import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: ListView(
        children: const <Widget> [
          Center(
            child: CircleAvatar(
              backgroundColor: Color(0xFFe5e5e5),
              radius: 50,
              child: Icon(
                Icons.person,
                color: Colors.white,
                size: 35,
              ),
            ),
          ),
          SizedBox(height:10),          
        ],
     ),
    );
  }
}