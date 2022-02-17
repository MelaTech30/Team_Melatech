

import 'package:flutter/material.dart';

class SchedulePage extends StatelessWidget {
  const SchedulePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF4ccce8),
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
               child: const Text('Sorting Days', style: TextStyle(
                 color: Colors.white,
                 fontSize: 20,
               ),)),
            ),
         const SizedBox(height: 10),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child:  ListTile(
              leading: Row(
                children: const [
                  Text('Monday', style: TextStyle(
                    color: Color(0xFF4e055a),
                  )),
                  
                ],
              ),
              title: Divider(),
            ),
          ),
          ]
        ),
      ),
    );
  }
}