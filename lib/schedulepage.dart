

import 'package:flutter/material.dart';

class SchedulePage extends StatelessWidget {
  const SchedulePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [
          Padding(
            padding: EdgeInsets.only(right:15),
            child: CircleAvatar(
              backgroundColor: Color(0xFFe5e5e5),
              child: Icon(Icons.person, 
              size: 35,
              color: Colors.white,
              )
            ),
          )
        ],
        backgroundColor:  Colors.white,
        title: const Center(
          child: Text('Schedule', 
          style: TextStyle(
            color: Color(0xFF4e055a),
            fontSize: 20,
          )
          ),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          color:Color(0xFF4e055a),
        ),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Title(color: const Color(0xFF4ccce8),
               child: const Center(
                 child: Text('Sorting Days', style: TextStyle(
                   color: Colors.white,
                   fontSize: 20,
                 ),),
               )),
            ),
         const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left:20, right: 20),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child:  ListTile(
                title: const Padding(
                  padding:  EdgeInsets.only(bottom:20),
                  child: Center(
                    child: Text('Monday', style: TextStyle(
                      color: Color(0xFF4e055a),
                        fontSize: 30,
                    )),
                  ),
                ),
                subtitle: Column(
                  children: <Widget> [
                   const Padding(
                      padding:  EdgeInsets.only(right:280, left: 0),
                      child:  Text('Pick up time',
                      style: TextStyle(
                        color: Color(0xFF4e055a),
                      fontSize: 20
                       ),
                      ),
                     ),
                    const SizedBox(height: 25,),
                    Row(
                    children:  <Widget> [                
                      CircleAvatar(
                        radius: 15,
                        backgroundColor: Colors.white, 
                        child:Image.asset('image/new.png') ,
                      ),
                      const SizedBox(width: 10,),
                     const Text('Recyclables', 
                      style: TextStyle(
                        color: Color(0xFF4e055a),
                      fontSize: 20
                       ),
                     ),
                    const SizedBox(width: 100,),
                    const Icon(Icons.delete_outline_outlined, 
                    size: 30, color: Color(0xFF4e055a),),
                    const SizedBox(width: 10,),
                    const Text('Organic',
                     style: TextStyle(
                        color: Color(0xFF4e055a),
                      fontSize: 20
                       ),
                    )
                    ]
                ),
                  ]
                  ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left:20, right: 20),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child:  ListTile(
                title: const Padding(
                  padding:  EdgeInsets.only(bottom:20),
                  child: Center(
                    child: Text('Monday', style: TextStyle(
                      color: Color(0xFF4e055a),
                        fontSize: 30,
                    )),
                  ),
                ),
                subtitle: Column(
                  children: <Widget> [
                   const Padding(
                      padding:  EdgeInsets.only(right:280, left: 0),
                      child:  Text('Pick up time',
                      style: TextStyle(
                        color: Color(0xFF4e055a),
                      fontSize: 20
                       ),
                      ),
                     ),
                    const SizedBox(height: 25,),
                    Row(
                    children:  <Widget> [                
                      CircleAvatar(
                        radius: 15,
                        backgroundColor: Colors.white, 
                        child:Image.asset('image/new.png') ,
                      ),
                      const SizedBox(width: 10,),
                     const Text('Recyclables', 
                      style: TextStyle(
                        color: Color(0xFF4e055a),
                      fontSize: 20
                       ),
                     ),
                    const SizedBox(width: 100,),
                    const Icon(Icons.delete_outline_outlined, 
                    size: 30, color: Color(0xFF4e055a),),
                    const SizedBox(width: 10,),
                    const Text('Organic',
                     style: TextStyle(
                        color: Color(0xFF4e055a),
                      fontSize: 20
                       ),
                    )
                    ]
                ),
                  ]
                  ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left:20, right: 20),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child:  ListTile(
                title: const Padding(
                  padding:  EdgeInsets.only(bottom:20),
                  child: Center(
                    child: Text('Monday', style: TextStyle(
                      color: Color(0xFF4e055a),
                        fontSize: 30,
                    )),
                  ),
                ),
                subtitle: Column(
                  children: <Widget> [
                   const Padding(
                      padding:  EdgeInsets.only(right:280, left: 0),
                      child:  Text('Pick up time',
                      style: TextStyle(
                        color: Color(0xFF4e055a),
                      fontSize: 20
                       ),
                      ),
                     ),
                    const SizedBox(height: 25,),
                    Row(
                    children:  <Widget> [                
                      CircleAvatar(
                        radius: 15,
                        backgroundColor: Colors.white, 
                        child:Image.asset('image/new.png') ,
                      ),
                      const SizedBox(width: 10,),
                     const Text('Recyclables', 
                      style: TextStyle(
                        color: Color(0xFF4e055a),
                      fontSize: 20
                       ),
                     ),
                    const SizedBox(width: 100,),
                    const Icon(Icons.delete_outline_outlined, 
                    size: 30, color: Color(0xFF4e055a),),
                    const SizedBox(width: 10,),
                    const Text('Organic',
                     style: TextStyle(
                        color: Color(0xFF4e055a),
                      fontSize: 20
                       ),
                    )
                    ]
                ),
                  ]
                  ),
              ),
            ),
          ),
          ]
        ),
      ),
    );
  }
}