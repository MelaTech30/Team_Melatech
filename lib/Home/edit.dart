import 'package:flutter/material.dart';

import 'profile.dart';

class Edit extends StatelessWidget {
  const Edit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: <Widget>[
          const SizedBox(height: 20),
          const Center(child: Text('Edit')),
          const SizedBox(
            height: 10,
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: TextFormField(
              decoration: const InputDecoration(
                  icon: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(Icons.person, color: Color(0xFF4e055a)),
                  ),
                  hintText: 'Name'),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: TextFormField(
              decoration: const InputDecoration(
                  icon: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(Icons.email, color: Color(0xFF4e055a)),
                  ),
                  hintText: 'Email'),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: TextFormField(
              decoration: const InputDecoration(
                icon: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(Icons.call, color: Color(0xFF4e055a)),
                ),
                hintText: 'Phone',
              ),
            ),
          ),
          RaisedButton(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            onPressed: () {
              Navigator.pop(context,
                  MaterialPageRoute(builder: (context) => const ProfilePage()));
            },
            child: const Text('Confirm'),
          ),
        ],
      ),
    );
  }
}
