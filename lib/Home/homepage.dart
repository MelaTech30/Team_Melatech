// ignore_for_file: deprecated_member_use
import 'package:flutter/material.dart';
import 'package:melatech/Food/food.dart';
// import 'package:melatech/profile.dart';
import 'package:melatech/Home/menu.dart';
import 'package:melatech/Waste/waste.dart';
import 'package:modal_side_sheet/modal_side_sheet.dart';

// import 'loginpage.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.green),
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Padding(
          padding: EdgeInsets.only(left: 60, right: 0),
          child: Text(
            'Home',
            style: TextStyle(
              color: Colors.green,
              fontSize: 28,
            ),
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {
                showModalSideSheet(context: context, body: Menu());
              },
              icon: const Icon(Icons.menu, size: 30))
        ],
      ),
      body: Container(
        decoration: const BoxDecoration(
          color: Colors.green,
        ),
        child: ListView(
          children: [
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 70, right: 70),
              child: Image.asset('assets/image/others/rec1.png', width: 80, height: 180),
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
                color: Colors.white,
                child: const Text(
                  'Recycle',
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 15,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: Image.asset('assets/image/others/image3.png'),
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
                color: Colors.white,
                child: const Text(
                  'Groceries',
                  style: TextStyle(
                    color: Colors.green,
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
