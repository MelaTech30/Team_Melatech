import 'package:flutter/material.dart';
import 'package:melatech/add.dart';

class Field extends StatelessWidget {
  const Field({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: <Widget>[
          const SizedBox(height: 80),
          Center(
            child: Container(
              decoration: BoxDecoration(
                // boxShadow: BoxShadow(color: Color(0xFF4e055a) ),
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: TextFormField(
                decoration: const InputDecoration(
                  icon: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(Icons.calendar_today, color: Color(0xFF4e055a)),
                  ),
                  label:
                      Text('Day', style: TextStyle(color: Color(0xFF4e055a))),
                  // border: OutlineInputBorder(borderSide: BorderSide.none)
                ),
              ),
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 100, right: 100),
            child: RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                onPressed: () {
                  Navigator.pop(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const AddPage(),
                      ));
                },
                child: Text('Confirm')),
          ),
        ],
      ),
    );
  }
}
