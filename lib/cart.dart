import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {
  const CartPage({ Key? key }) : super(key: key);

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
      backgroundColor: Colors.orangeAccent,
      body: ListView(
        children: <Widget> [          
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
                // const SizedBox(
                //   width: 0,
                // ),
       PopupMenuButton(
  icon: const Icon(Icons.arrow_drop_down,
  color: Colors.white,
  ),
  itemBuilder: (BuildContext context) => <PopupMenuEntry>[
    const PopupMenuItem(
      textStyle: TextStyle(
        color: Color(0xFF4e055a)
      ),
      child: Text('Caton')
      ),
    const PopupMenuItem(
       textStyle: TextStyle(
        color: Color(0xFF4e055a)
      ),
      child: Text('Bag')
      ),
    const PopupMenuItem(
       textStyle: TextStyle(
        color: Color(0xFF4e055a)
      ),
      child:Text('Bucket')
      ),   
  ],
),
              ],
            ),
          ),
          const SizedBox(height:50),
          Padding(
            padding: const EdgeInsets.only(left:80, right: 80),
            child: FlatButton(onPressed: (){
              showModalBottomSheet(context: context, builder: (context){
                return Wrap(
                  children: <Widget> [
                    const SizedBox( height: 10,),
                  Padding(
                    padding: const EdgeInsets.only(left:10, right: 0),
                    child: Row(
                      children: const <Widget> [
                         Text('Amount:'),
                        SizedBox(width:10),
                            Text('GH₵ 348.30'),                          
                      ],
                    ),
                  ),
                  Center(
                    child: FlatButton(
                              onPressed: (){},
                              child: const Text(
                                'Mobile money',
                                style: TextStyle(color: Colors.white,)
                              ),
                              color: const Color(0xFF4ccce8),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                  ),
                  const SizedBox(height:50),
                   Center(
                    child: FlatButton(
                              onPressed: (){},
                              child: const Text(
                                'Trash Cash',
                                style: TextStyle(color: Colors.white,)
                              ),
                              color: const Color(0xFF4ccce8),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                  ),
                  ],
                );
              });
            }, 
            shape:  RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10)
            ),
            color: const Color(0xFF4e055a),
            child: const Text(
              'Payment Mode',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            ),
          ),
          const SizedBox(height:50),
        const Padding(
           padding: EdgeInsets.only(left:15),
           child:  Text('GPS Address:'),
         ),
         const SizedBox(height:30),
         const Padding(
           padding: EdgeInsets.only(left:15),
           child: Text('Name:'),
         ),
         const SizedBox(height:30),
          const Padding(
           padding: EdgeInsets.only(left:15),
           child:  Text('Phone Number:'),
          ),        
         const SizedBox(height:30),
         const Padding(
           padding: EdgeInsets.only(left:15),
           child:  Text('Order ID:'),
         ),
          const SizedBox(height:30),
         const Padding(
           padding: EdgeInsets.only(left:15),
           child:  Text('Amount:'),
         ),
          const SizedBox(height:30),
         const Padding(
           padding: EdgeInsets.only(left:15),
           child:  Text('Delivery:'),
         ),   
          const SizedBox(height:30),
         const Padding(
           padding: EdgeInsets.only(left:30),
           child:  Text('Total Amount='),
         ),      
        ],
      ),
    );
  }
}