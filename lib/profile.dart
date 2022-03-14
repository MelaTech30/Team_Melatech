import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Color(0xFF4e055a)),
        backgroundColor: Colors.white,
        title: const Padding(
          padding: EdgeInsets.only(left: 60, right: 0),
          child: Text(
            'Edit Profile',
            style: TextStyle(color: Color(0xFF4e055a), fontSize: 25),
          ),
        ),
      ),
      backgroundColor: Colors.blueAccent,
      body: Column(children: <Widget>[
        const SizedBox(
          height: 25,
        ),
        const Center(
          child: CircleAvatar(
            backgroundColor: const Color(0xFFe5e5e5),
            radius: 70,
            child: Icon(
              Icons.person,
              color: Colors.white,
              size: 90,
            ),
          ),
        ),
        const SizedBox(height: 15),
        FlatButton(
          onPressed: () {},
          child: const Text(
            'Change profile picture',
          ),
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
        ),
        Container(
          decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: Colors.white,
              borderRadius: BorderRadius.circular(5)),
          height: 100,
          child: ListTile(
            leading: Column(
              mainAxisSize: MainAxisSize.max,
              children: const <Widget>[
               Text('data'),
                Text('data'),
                Text('data'),
                Text('data'),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
