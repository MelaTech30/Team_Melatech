
import 'package:flutter/material.dart';

class StartPage extends StatelessWidget {
  const StartPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xFF4e055a),
        title: const Center(child:  Text('Start a Pick Up',
        style: TextStyle(
          color: Colors.white,
        )
        )),
        actions: const [  Padding(
          padding:  EdgeInsets.only(right:15),
          child: CircleAvatar(
            backgroundColor: Color(0xFFe5e5e5),
            child: Icon(Icons.person, 
            size: 35, 
            color: Colors.white,),
          ),
        )],
      ),
      body: ListView(
          children:  [
           const  SizedBox(height:20),
            Padding(
              padding: const EdgeInsets.only(left:50, right: 70),
              child: Card(
                color: const Color(0xFF4e055a),
                child: ListTile(
                  title:const Center(child: Text('Monthly Subscription', 
                  style: TextStyle(
                          color: Colors.white,
                          fontSize: 18
                  ),
                ),
              ),
              subtitle:
                   Column(
                     children: const <Widget>[
                      Center(
                     child: 
                     Text('Pick up times will be on weekly bases and payments are to be done at the end of every month. Earn GH₵ 10 on every 100kg waste produced every month.',
                     style: TextStyle(
                            color: Colors.white,
                  ),
                     ),
                   ),
                   Text('Amount = GH₵ 15',
                   style: TextStyle(
                            color: Colors.white,
                  ),
                   )
                     ]
                   ),
                ),
              ),
            ),
           const SizedBox(height:20),
            Padding(
              padding: const EdgeInsets.only(left:50, right: 70),
              child: Card(
                color: const  Color(0xFF4e055a),
                child: ListTile(
                  title: const Center(child: Text('Weekly Subscription', 
                  style: TextStyle(
                          color: Colors.white,
                          fontSize: 18
                  ),
                ),
              ),
              subtitle:
                  Column(
                    children: const <Widget> [
                       Center(
                     child: Text('Pick up times will be on daily bases and payments are to be done at the end of every week. Earn GH₵ 5 on every 70kg waste produced every week.',
                     style: TextStyle(
                            color: Colors.white,
                  ),
                     ),
                   ),
                   Text('Amount = GH₵ 10',
                   style: TextStyle(
                            color: Colors.white,
                  ),
                   ),
                    ]
                  )
                ),
              ),
            ),
          const  SizedBox(height:20),
         Padding(
              padding: const EdgeInsets.only(left:50, right: 70),
              child: Card(
                color: const Color(0xFF4e055a),
                child: ListTile(
                  title: const Center(child: Text('Daily Subscription', 
                  style: TextStyle(
                          color: Colors.white,
                          fontSize: 18
                  ),
                ),
              ),
              subtitle:
                  Column(
                    children: const <Widget> [
                       Center(
                     child: Text('Pick up times will be on specified and payments are to be made on the days for pickup. Earn GH₵ 3 on every 40kg waste produced on each day.',
                     style: TextStyle(
                            color: Colors.white,
                  ),
                     ),
                   ),
                   Text('Amount = GH₵ 5',
                   style: TextStyle(
                            color: Colors.white,
                  ),
                   ),
                    ],
                  )
                ),
              ),
            ),
          ],
      ),
    );
  }
}