import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: const <Widget>[
        CircleAvatar(
          radius: 80,
          backgroundColor: Color(0xFFe5e5e5),
          child: Icon(
            Icons.person,
            color: Colors.white,
            size: 95,
          ),
        ),
      ],
    );
  }
}
