import 'package:flutter/material.dart';

class AppInfo extends StatelessWidget {
  const AppInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: Colors.green,
        elevation: 0,
        title: const Padding(
          padding: EdgeInsets.only(left: 60, right: 0),
          child: Text(
            'App Info',
            style: TextStyle(
              color: Colors.white,
              fontSize: 28,
            ),
          ),
        ),
      ),
      body: ListView(
        children: const <Widget>[],
      ),
    );
  }
}
