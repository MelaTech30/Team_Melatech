import 'package:flutter/material.dart';
import 'package:ecocycle/cart.dart';
import 'package:ecocycle/options.dart';
import 'package:ecocycle/veges.dart';

class FoodPage extends StatefulWidget {
  const FoodPage({ Key? key }) : super(key: key);

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

void _onItemTapped(int index){
  setState((){
    _currentIndex = index;
  });
}


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      bottomNavigationBar: BottomNavigationBar(
  type: BottomNavigationBarType.fixed,
  backgroundColor:const Color(0xFFffffff),
  selectedItemColor: const Color(0xFF4e055a),
  unselectedItemColor: Color(0xFF4e055a).withOpacity(.60),
  selectedFontSize: 14,
  unselectedFontSize: 14,
  onTap: _onItemTapped,
  items: const [
    BottomNavigationBarItem(
      label: 'Home',
      icon: Icon(Icons.home,
      color:Color(0xFF4e055a)
      ),
    ),
    BottomNavigationBarItem(
      label: 'Cart',
      icon: Icon(Icons.shopping_cart_outlined,
      color:Color(0xFF4e055a)
      )
    ),
    BottomNavigationBarItem(
      label: 'Options',
      icon: Icon(Icons.more_vert,
      color:Color(0xFF4e055a)
      ),
    ),
  ],
  currentIndex: _currentIndex,
),    
  body: _children[_currentIndex],      
    );
  }
}