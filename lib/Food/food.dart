import 'package:flutter/material.dart';
import 'package:melatech/Food/cart.dart';
import 'package:melatech/Food/options.dart';
import 'package:melatech/Food/veges.dart';

class FoodPage extends StatefulWidget {
  const FoodPage({Key? key}) : super(key: key);

  @override
  State<FoodPage> createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
// ignore: unused_field
  int _currentIndex = 0;
// ignore: unused_field
  final List<Widget> _children = [
    const VegesPage(),
    const CartPage(),
    const OptionsPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.green,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white.withOpacity(.60),
        selectedFontSize: 14,
        unselectedFontSize: 14,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(
            label: 'Shop',
            icon: Icon(
              Icons.shop_rounded,
              color: Colors.white,
            ),
          ),
          BottomNavigationBarItem(
              label: 'Cart',
              icon: Icon(
                Icons.shopping_cart_outlined,
                color: Colors.white,
              )),
          BottomNavigationBarItem(
            label: 'Options',
            icon: Icon(
              Icons.more_vert,
              color: Colors.white,
            ),
          ),
        ],
        currentIndex: _currentIndex,
      ),
      //   bottomNavigationBar: BottomAppBar(
      //     elevation: 0,
      //     color: Colors.white,
      //     child: Row(
      //   children: [
      //     IconButton(icon: const Icon(Icons.home),
      //     color: const Color(0xFF4e055a),
      //     onPressed: () {}),
      //    const Spacer(),
      //     IconButton(icon: const Icon(Icons.shopping_cart_outlined),
      //     color: const Color(0xFF4e055a),
      //      onPressed: () {}),
      //    const  Spacer(),
      //     IconButton(icon: const Icon(Icons.more_vert),
      //     color: const Color(0xFF4e055a),
      //      onPressed: () {}),
      //   ],
      // ),
      //   ),
      body: _children[_currentIndex],
    );
  }
}
