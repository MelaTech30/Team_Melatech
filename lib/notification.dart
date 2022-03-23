import 'package:flutter/material.dart';

class notification extends StatelessWidget {
  const notification({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.lightBlue),
        backgroundColor: Colors.lightGreen,
        elevation: 0,
        title: const Padding(
          padding: EdgeInsets.only(left: 60, right: 0),
          child: Text(
            'Notifications',
            style: TextStyle(
              color: Colors.lightBlue,
              fontSize: 25,
            ),
          ),
        ),
      ),
      body: ListView(
        children: <Widget>[],
      ),
    );
  }
}