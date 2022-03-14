import 'package:flutter/material.dart';

class StartPage extends StatelessWidget {
  const StartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        elevation: 0,
        backgroundColor: const Color(0xFF4e055a),
        title: const Center(
            child: Text('Start a Pick Up',
                style: TextStyle(
                  color: Colors.white,
                ))),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Icon(
              Icons.more_vert,
              color: Colors.white,
            ),
          )
        ],
      ),
      body: ListView(
        children: const [
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.only(left: 20, right: 40),
            child: Card(
              color: Color(0xFF4e055a),
              child: ListTile(
                title: Center(
                  child: Text(
                    'Monthly Subscription',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
                subtitle: Center(
                  child: Text(
                    'Pick up times will be on weekly bases and payments are to be done at the end of every month. Earn GH₵ 10 on every 100kg waste produced every month.             Amount = GH₵ 15',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.only(left: 20, right: 40),
            child: Card(
              color: Color(0xFF4e055a),
              child: ListTile(
                title: Center(
                  child: Text(
                    'Weekly Subscription',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
                subtitle: Center(
                  child: Text(
                    'Pick up times will be on daily bases and payments are to be done at the end of every week. Earn GH₵ 5 on every 70kg waste produced every week.             Amount = GH₵ 10',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.only(left: 20, right: 40),
            child: Card(
              color: Color(0xFF4e055a),
              child: ListTile(
                title: Center(
                  child: Text(
                    'Daily Subscription',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
                subtitle: Center(
                  child: Text(
                    'Pick up times will be on specified and payments are to be made on the days for pickup. Earn GH₵ 3 on every 40kg waste produced on each day.                     Amount = GH₵ 5',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
