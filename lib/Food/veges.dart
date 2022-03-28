// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class VegesPage extends StatelessWidget {
  const VegesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: ListView(
          children: <Widget>[
            Row(
              children: <Widget>[
                const SizedBox(
                  height: 15,
                  width: 30,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    clipBehavior: Clip.hardEdge,
                    width: 110,
                    height: 110,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      shape: BoxShape.rectangle,
                    ),
                    child: Image.asset(
                      'image/veg1.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Column(
                  children: <Widget>[
                    const Text(
                      'Tomatoes',
                      style: TextStyle(
                        color: Color(0xFF4e055a),
                      ),
                    ),
                    const Text(
                      'Unit price GH₵ 0.3',
                      style: TextStyle(
                        color: Color(0xFF4e055a),
                      ),
                    ),
                    FlatButton(
                      onPressed: () {},
                      color: Colors.lightGreen,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(10),
                            topLeft: Radius.circular(10)),
                      ),
                      child: const Text(
                        'Add to cart',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Row(
              children: <Widget>[
                const SizedBox(
                  height: 15,
                  width: 30,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    clipBehavior: Clip.hardEdge,
                    width: 110,
                    height: 110,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      shape: BoxShape.rectangle,
                    ),
                    child: Image.asset(
                      'image/veg2.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Column(
                  children: <Widget>[
                    const Text(
                      'Onions',
                      style: TextStyle(
                        color: Color(0xFF4e055a),
                      ),
                    ),
                    const Text(
                      'Unit price GH₵ 0.3',
                      style: TextStyle(
                        color: Color(0xFF4e055a),
                      ),
                    ),
                    FlatButton(
                      onPressed: () {},
                      color: Colors.lightGreen,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(10),
                            topLeft: Radius.circular(10)),
                      ),
                      child: const Text(
                        'Add to cart',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Row(
              children: <Widget>[
                const SizedBox(
                  height: 15,
                  width: 30,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    clipBehavior: Clip.hardEdge,
                    width: 110,
                    height: 110,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      shape: BoxShape.rectangle,
                    ),
                    child: Image.asset(
                      'image/veg3.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Column(
                  children: <Widget>[
                    const Text(
                      'Bell Pepper',
                      style: TextStyle(
                        color: Color(0xFF4e055a),
                      ),
                    ),
                    const Text(
                      'Unit price GH₵ 0.3',
                      style: TextStyle(
                        color: Color(0xFF4e055a),
                      ),
                    ),
                    FlatButton(
                      onPressed: () {},
                      color: Colors.lightGreen,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(10),
                            topLeft: Radius.circular(10)),
                      ),
                      child: const Text(
                        'Add to cart',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Row(
              children: <Widget>[
                const SizedBox(
                  height: 15,
                  width: 30,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    clipBehavior: Clip.hardEdge,
                    width: 110,
                    height: 110,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      shape: BoxShape.rectangle,
                    ),
                    child: Image.asset(
                      'image/veg4.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Column(
                  children: <Widget>[
                    const Text(
                      'Carrot',
                      style: TextStyle(
                        color: Color(0xFF4e055a),
                      ),
                    ),
                    const Text(
                      'Unit price GH₵ 0.3',
                      style: TextStyle(
                        color: Color(0xFF4e055a),
                      ),
                    ),
                    FlatButton(
                      onPressed: () {},
                      color: Colors.lightGreen,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(10),
                            topLeft: Radius.circular(10)),
                      ),
                      child: const Text(
                        'Add to cart',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Row(
              children: <Widget>[
                const SizedBox(
                  height: 15,
                  width: 30,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    clipBehavior: Clip.hardEdge,
                    width: 110,
                    height: 110,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      shape: BoxShape.rectangle,
                    ),
                    child: Image.asset(
                      'image/veg5.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Column(
                  children: <Widget>[
                    const Text(
                      'Cabbages',
                      style: TextStyle(
                        color: Color(0xFF4e055a),
                      ),
                    ),
                    const Text(
                      'Unit price GH₵ 5',
                      style: TextStyle(
                        color: Color(0xFF4e055a),
                      ),
                    ),
                    FlatButton(
                      onPressed: () {},
                      color: Colors.lightGreen,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(10),
                            topLeft: Radius.circular(10)),
                      ),
                      child: const Text(
                        'Add to cart',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Row(
              children: <Widget>[
                const SizedBox(
                  height: 15,
                  width: 30,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    clipBehavior: Clip.hardEdge,
                    width: 110,
                    height: 110,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      shape: BoxShape.rectangle,
                    ),
                    child: Image.asset(
                      'image/veg6.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Column(
                  children: <Widget>[
                    const Text(
                      'Sweet Pepper',
                      style: TextStyle(
                        color: Color(0xFF4e055a),
                      ),
                    ),
                    const Text(
                      'Unit price GH₵ 0.5',
                      style: TextStyle(
                        color: Color(0xFF4e055a),
                      ),
                    ),
                    FlatButton(
                      onPressed: () {},
                      color: Colors.lightGreen,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(10),
                            topLeft: Radius.circular(10)),
                      ),
                      child: const Text(
                        'Add to cart',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
