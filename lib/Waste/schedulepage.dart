import 'package:flutter/material.dart';
import 'package:melatech/Home/add.dart';

import '../Home/add.dart';

class SchedulePage extends StatelessWidget {
  const SchedulePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.green),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const AddPage()));
              },
              icon: const Icon(
                Icons.add,
                size: 40,
              ))
        ],
        backgroundColor: Colors.white,
        title: const Center(
          child: Text('Schedule',
              style: TextStyle(
                color: Colors.green,
                fontSize: 28,
              )),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          color: Colors.green,
        ),
        child: ListView(children: [
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: ListTile(
                title: const Padding(
                  padding: EdgeInsets.only(bottom: 20),
                  child: Center(
                    child: Text('Monday',
                        style: TextStyle(
                          color: Color(0xFF4e055a),
                          fontSize: 30,
                        )),
                  ),
                ),
                subtitle: Column(children: <Widget>[
                  Row(children: const <Widget>[
                    Icon(
                      Icons.delete_outline_outlined,
                      size: 30,
                      color: Color(0xFF4e055a),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Organic',
                      style: TextStyle(color: Color(0xFF4e055a), fontSize: 20),
                    )
                  ]),
                ]),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: ListTile(
                title: const Padding(
                  padding: EdgeInsets.only(bottom: 20),
                  child: Center(
                    child: Text('Wednesday',
                        style: TextStyle(
                          color: Color(0xFF4e055a),
                          fontSize: 30,
                        )),
                  ),
                ),
                subtitle: Column(children: <Widget>[
                  Row(children: const <Widget>[
                    Icon(
                      Icons.delete_outline_outlined,
                      size: 30,
                      color: Color(0xFF4e055a),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Organic',
                      style: TextStyle(color: Color(0xFF4e055a), fontSize: 20),
                    )
                  ]),
                ]),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: ListTile(
                title: const Padding(
                  padding: EdgeInsets.only(bottom: 20),
                  child: Center(
                    child: Text('Saturday',
                        style: TextStyle(
                          color: Color(0xFF4e055a),
                          fontSize: 30,
                        )),
                  ),
                ),
                subtitle: Column(children: <Widget>[
                  Row(children: <Widget>[
                    CircleAvatar(
                      radius: 15,
                      backgroundColor: Colors.green,
                      child: Image.asset('assets/image/others/new.png'),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text(
                      'Recyclables',
                      style: TextStyle(color: Color(0xFF4e055a), fontSize: 20),
                    ),
                  ]),
                ]),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
