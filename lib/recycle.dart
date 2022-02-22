

import 'package:flutter/material.dart';

class RecyclePage extends StatelessWidget {
  const RecyclePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
            Color(0xFF4e055a),
            Color(0xFF4ccce8)
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          ),
        ),
        child: ListView(
          children:[
            Card(
              child: ListTile(
                leading: const Icon(Icons.delete_outlined),
                title: const Text('Organic Waste'),
                subtitle: const Text('Manure'),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  verticalDirection: VerticalDirection.down,
                  children: const <Widget>[
                    Icon(Icons.label),
                    Icon(Icons.home)
                  ]
                ),
              ),
            ),
          ]
        ),
      ),      
    );
  }
}