import 'package:flutter/material.dart';
import 'package:melatech/info.dart';
import 'package:melatech/Account/loginpage.dart';
import 'package:melatech/profile.dart';

import 'notification.dart';

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
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ProfilePage()));
              },
              child: Row(
                children: const <Widget>[
                  Icon(Icons.person),
                  SizedBox(width: 10),
                  Text('Profile'),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const notification()));
              },
              child: Row(
                children: const <Widget>[
                  Icon(Icons.notifications),
                  SizedBox(width: 10),
                  Text('Notifications'),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const AppInfo()));
              },
              child: Row(
                children: const <Widget>[
                  Icon(Icons.info),
                  SizedBox(width: 10),
                  Text('App Info'),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Row(
              children: const <Widget>[
                Icon(Icons.chat),
                SizedBox(width: 10),
                Text('Feedback'),
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const LoginPage()));
              },
              child: Row(
                children: const <Widget>[
                  Icon(Icons.logout),
                  SizedBox(width: 10),
                  Text('Logout'),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
