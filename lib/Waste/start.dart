import 'package:flutter/material.dart';

class StartPage extends StatefulWidget {
  const StartPage({Key? key}) : super(key: key);

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  Future<void> showInformationDialog(BuildContext context) async {
    return await showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            content: Text('Thank you for choosing this subscription'),
            actions: <Widget>[
              FlatButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text('Cancel')),
              FlatButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text('Cofirm payment')),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        elevation: 0,
        backgroundColor: Colors.green,
        title: const Padding(
          padding: EdgeInsets.only(left: 50),
          child: Text('Start a Pick Up',
              style: TextStyle(
                color: Colors.white,
              )),
        ),
      ),
      body: ListView(
        children: [
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 40),
            child: InkWell(
              onTap: () async {
                await showInformationDialog(context);
              },
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
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 40),
            child: InkWell(
              onTap: () async {
                await showInformationDialog(context);
              },
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
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 40),
            child: InkWell(
              onTap: () async {
                await showInformationDialog(context);
              },
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
          ),
        ],
      ),
    );
  }
}
