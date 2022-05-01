import 'package:flutter/material.dart';

class notification extends StatelessWidget {
  const notification({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: Colors.green,
        elevation: 0,
        title: const Padding(
          padding: EdgeInsets.only(
            left: 45,
          ),
          child: Text(
            'Notifications',
            style: TextStyle(
              color: Colors.white,
              fontSize: 28,
            ),
          ),
        ),
      ),
      body: ListView(
        children: const <Widget>[
          SizedBox(height: 20),
          Card(
            color: Colors.green,
            clipBehavior: Clip.antiAlias,
            child: ListTile(
              subtitle: Text(
                'Your reward is 5kg of onions which will be delivered to your...',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              trailing: Icon(
                Icons.notifications,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
