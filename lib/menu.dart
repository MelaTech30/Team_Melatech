import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: <Widget>[
          const CircleAvatar(
            radius: 80,
            backgroundColor: Color(0xFFe5e5e5),
            child: Icon(
              Icons.person,
              color: Colors.white,
              size: 95,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Row(
              children: <Widget>[
                Icon(Icons.person),
                SizedBox(width: 10),
                Text('Profile'),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Row(
              children: <Widget>[
                Icon(Icons.notifications),
                SizedBox(width: 10),
                Text('Notifications'),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Row(
              children: <Widget>[
                Icon(Icons.info),
                SizedBox(width: 10),
                Text('App Info'),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Row(
              children: <Widget>[
                Icon(Icons.logout),
                SizedBox(width: 10),
                Text('Logout'),
              ],
            ),
          )
        ],
      ),
    );
  }
}
