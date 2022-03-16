// ignore_for_file: deprecated_member_use
import 'package:flutter/material.dart';
import 'package:melatech/food.dart';
import 'package:melatech/profile.dart';
import 'package:melatech/waste.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Color(0xFF4e055a)),
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Padding(
          padding: EdgeInsets.only(left: 60, right: 0),
          child: Text(
            'Home',
            style: TextStyle(
              color: Color(0xFF4e055a),
              fontSize: 25,
            ),
          ),
        ),
        actions:  [Padding(
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
          )
      
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
                child: Image.asset('image/rec1.png', width: 80, height: 280),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left:80, right: 80),
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
              padding: const EdgeInsets.only(left:80, right: 80),
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
                color:  Colors.lightBlue,
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
