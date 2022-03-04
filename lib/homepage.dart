// ignore_for_file: deprecated_member_use
import 'package:flutter/material.dart';
import 'package:melatech/food.dart';
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
        actions: const [Padding(
          padding:  EdgeInsets.only(right:15),
          child: CircleAvatar(
            backgroundColor: Color(0xFFe5e5e5),
            child: Icon(Icons.person,
            color: Colors.white,
            ),
          ),
        ),
      Icon(Icons.more_vert,
      color: Color(0xFF4e055a),
      )
      
      ],
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF4e055a), Color(0xFF4ccce8)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: ListView(
          children: [
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 70, right: 70),
              child: Card(
                clipBehavior: Clip.antiAlias,
                child: Image.asset('image/image2.jpg', width: 80, height: 280),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
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
                color: const Color(0xFF4e055a),
                child: const Text(
                  'Waste Management',
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
              padding: const EdgeInsets.only(left: 70, right: 70),
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
                color: const Color(0xFF4e055a),
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
