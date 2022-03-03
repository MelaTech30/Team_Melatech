import 'package:flutter/material.dart';
import 'package:melatech/rewards.dart';
import 'package:melatech/schedulepage.dart';
import 'package:melatech/start.dart';

class WastePage extends StatelessWidget {
  const WastePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Color(0xFF4e055a)),
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Center(
            child: Text('Waste Management',
                style: TextStyle(
                  color: Color(0xFF4e055a),
                ))),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 15),
            child: CircleAvatar(
              backgroundColor: Color(0xFFe5e5e5),
              child: Icon(
                Icons.person,
                size: 35,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
      body: Container(
        color: const Color(0xFF4e055a),
        child: ListView(
          children: [
            const SizedBox(height: 20),
            Image.asset('image/new.png', width: 200, height: 200),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 30),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const StartPage()));
                },
                child: const Card(
                  child: ListTile(
                    leading: Icon(
                      Icons.pin_drop,
                      size: 50,
                      color: Color(0xFF4e055a),
                    ),
                    title: Text(
                      'Start A Pick up',
                      style: TextStyle(
                        color: Color(0xFF4e055a),
                        fontSize: 20,
                      ),
                    ),
                    subtitle: Text(
                      'Subscriptions suitable for you',
                      style: TextStyle(
                        color: Color(0xFF4e055a),
                        fontSize: 10,
                      ),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward,
                      size: 20,
                      color: Color(0xFF4e055a),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 30),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SchedulePage()));
                },
                child: const Card(
                  child: ListTile(
                    leading: Icon(
                      Icons.delete_outlined,
                      size: 50,
                      color: Color(0xFF4e055a),
                    ),
                    title: Text(
                      'Pick up Schedules',
                      style: TextStyle(
                        color: Color(0xFF4e055a),
                        fontSize: 20,
                      ),
                    ),
                    subtitle: Text(
                      'Subscriptions suitable for you',
                      style: TextStyle(
                        color: Color(0xFF4e055a),
                        fontSize: 10,
                      ),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward,
                      size: 20,
                      color: Color(0xFF4e055a),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 30),
              child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => RewardPage()));
                },
                child: const Card(
                  child: ListTile(
                    leading: Icon(
                      Icons.attach_money,
                      size: 50,
                      color: Color(0xFF4e055a),
                    ),
                    title: Text(
                      'Rewards',
                      style: TextStyle(
                        color: Color(0xFF4e055a),
                        fontSize: 20,
                      ),
                    ),
                    subtitle: Text(
                      'Subscriptions suitable for you',
                      style: TextStyle(
                        color: Color(0xFF4e055a),
                        fontSize: 10,
                      ),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward,
                      size: 20,
                      color: Color(0xFF4e055a),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
