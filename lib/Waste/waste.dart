import 'package:flutter/material.dart';
// import 'package:melatech/profile.dart';
import 'package:melatech/Waste/rewards.dart';
import 'package:melatech/Waste/schedulepage.dart';
import 'package:melatech/Waste/start.dart';

class WastePage extends StatelessWidget {
  const WastePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.green),
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Center(
            child: Text('Waste Management',
                style: TextStyle(
                  color: Colors.green,
                ))),
      ),
      body: Container(
        color: Colors.green,
        child: ListView(
          children: [
            const SizedBox(height: 20),
            Image.asset('assets/image/others/new.png', width: 200, height: 200),
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
                child: Card(
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Image.asset('assets/image/icons/pick.png'),
                    ),
                    title: const Text(
                      'Start A Pick up',
                      style: TextStyle(
                        color: Color(0xFF4e055a),
                        fontSize: 20,
                      ),
                    ),
                    subtitle: const Text(
                      'Subscriptions suitable for you',
                      style: TextStyle(
                        color: Color(0xFF4e055a),
                        fontSize: 10,
                      ),
                    ),
                    trailing: const Icon(
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
                child: Card(
                  child: ListTile(
                    leading: CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Image.asset(
                          'assets/image/icons/schedule.png',
                          width: 200,
                          height: 200,
                        )),
                    title: const Text(
                      'Pick up Schedules',
                      style: TextStyle(
                        color: Color(0xFF4e055a),
                        fontSize: 20,
                      ),
                    ),
                    subtitle: const Text(
                      'Subscriptions suitable for you',
                      style: TextStyle(
                        color: Color(0xFF4e055a),
                        fontSize: 10,
                      ),
                    ),
                    trailing: const Icon(
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
                child: Card(
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Image.asset('assets/image/icons/gift.png'),
                    ),
                    title: const Text(
                      'Rewards',
                      style: TextStyle(
                        color: Color(0xFF4e055a),
                        fontSize: 20,
                      ),
                    ),
                    subtitle: const Text(
                      'Subscriptions suitable for you',
                      style: TextStyle(
                        color: Color(0xFF4e055a),
                        fontSize: 10,
                      ),
                    ),
                    trailing: const Icon(
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
