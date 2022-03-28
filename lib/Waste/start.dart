import 'package:flutter/material.dart';

class StartPage extends StatelessWidget {
  const StartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        elevation: 0,
        backgroundColor: Colors.green,
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
        children: [
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 40),
            child: Card(
              color: Colors.green,
              child: ListTile(
                title: const Center(
                  child: Text(
                    'Monthly Subscription',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
                subtitle: Column(
                  children: const <Widget>[
                    Text(
                      'Pick up times will be on weekly bases and payments are to be done at the end of every month. Earn 5kg worth of vegetables on every 100kg waste produced every month.',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'Amount = GH₵ 15',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 40),
            child: Card(
              color: Colors.green,
              child: ListTile(
                title: const Center(
                  child: Text(
                    'Weekly Subscription',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
                subtitle: Column(
                  children: const <Widget>[
                    Text(
                      'Pick up times will be on daily bases and payments are to be done at the end of every week. Earn 2kg worth of vegetables on every 70kg waste produced every week.',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'Amount = GH₵ 10',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 40),
            child: Card(
              color: Colors.green,
              child: ListTile(
                title: const Center(
                  child: Text(
                    'Daily Subscription',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
                subtitle: Column(
                  children: const <Widget>[
                    Text(
                      'Pick up times will be on specified and payments are to be made on the days for pickup. ',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'Amount = GH₵ 5',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
