import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  int _count = 0;

  void _incrementCount() {
    setState(() {
      _count++;
    });
  }

  void _decrementCount() {
    if (_count < 1) {
      return;
    }
    setState(() {
      _count--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Colors.white,
      body: ListView(
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
                children: const <Widget>[
                  Text(
                    'Tomatoes',
                    style: TextStyle(
                      color: Color(0xFF4e055a),
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    'Unit price GH₵ 0.3',
                    style: TextStyle(
                      color: Color(0xFF4e055a),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 0, right: 45),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                FlatButton(
                  color: const Color(0xFF4e055a),
                  minWidth: 5,
                  height: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4),
                  ),
                  onPressed: _incrementCount,
                  child: const Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                ),
                Text('${_count}'),
                FlatButton(
                  onPressed: _decrementCount,
                  color: const Color(0xFF4e055a),
                  minWidth: 5,
                  height: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: const Icon(
                    Icons.remove,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
               PopupMenuButton(
  icon: Icon(Icons.more_vert),
  itemBuilder: (BuildContext context) => <PopupMenuEntry>[   
    const PopupMenuItem(child: Text('Caton')),
    const PopupMenuItem(child: Text('Sack')),
    const PopupMenuItem(child: Text('Bucket')),
  ],
),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
