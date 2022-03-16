// ignore_for_file: deprecated_member_use
import 'package:flutter/material.dart';
import 'package:melatech/food.dart';
import 'package:melatech/profile.dart';
import 'package:melatech/waste.dart';

import 'loginpage.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.lightBlue),
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Padding(
          padding: EdgeInsets.only(left: 60, right: 0),
          child: Text(
            'Home',
            style: TextStyle(
              color: Colors.lightBlue,
              fontSize: 25,
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ProfilePage()));
              },
              child: const CircleAvatar(
                backgroundColor: Color(0xFFe5e5e5),
                child: Icon(
                  Icons.person,
                  size: 35,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          PopupMenuButton(
            icon: const Icon(Icons.more_vert, color: Color(0xFF4e055a)),
            itemBuilder: (BuildContext context) => <PopupMenuEntry>[
              const PopupMenuItem(
                child: ListTile(
                  leading: Icon(
                    Icons.person,
                    color: Color(0xFF4e055a),
                  ),
                  title: Text(
                    'About us',
                    style: TextStyle(
                      color: Color(0xFF4e055a),
                    ),
                  ),
                ),
              ),
              const PopupMenuItem(
                  child: ListTile(
                leading: Icon(
                  Icons.settings,
                  color: Color(0xFF4e055a),
                ),
                title: Text(
                  'Settings',
                  style: TextStyle(
                    color: Color(0xFF4e055a),
                  ),
                ),
              )),
              PopupMenuItem(
                  onTap: () {
                    Navigator.pop(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginPage()));
                  },
                  child: const ListTile(
                    leading: Icon(
                      Icons.logout,
                      color: Color(0xFF4e055a),
                    ),
                    title: Text(
                      'Logout',
                      style: TextStyle(
                        color: Color(0xFF4e055a),
                      ),
                    ),
                  )),
            ],
          ),
        ],
      ),
      body: Container(
        decoration: const BoxDecoration(
          color: Colors.lightGreen,
        ),
        child: ListView(
          children: [
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 70, right: 70),
              child: Card(
                clipBehavior: Clip.antiAlias,
                child: Image.asset('image/rec1.png', width: 80, height: 180),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 80, right: 80),
              child: FlatButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const WastePage(),
                      ));
                },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
                color: Colors.lightBlue,
                child: const Text(
                  'Recycle',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: Card(
                clipBehavior: Clip.antiAlias,
                child: Image.asset('image/image3.png'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 80, right: 80),
              child: FlatButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const FoodPage(),
                      ));
                },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
                color: Colors.lightBlue,
                child: const Text(
                  'Farm Produce',
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
