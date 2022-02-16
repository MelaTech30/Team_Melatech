

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
         decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
            Color(0xFF4e055a),
            Color(0xFF4ccce8)
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          ),
        ),
        child: ListView(
          children: [
            Row(
              children: [
                IconButton(onPressed: (){}, icon: const Icon(Icons.menu)),
               const Spacer(),
                Image.asset('image/logo.png',
                width: 50,
                height: 50,
                )
              ],
            ),
           const SizedBox(height: 20,),
            Image.asset('image/new.png',
            width: 200,
            height:200
            ),
           const SizedBox(height:20),
            Container(child: const ListTile(
              leading: Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(Icons.pin_drop_outlined,
                color: Color(0xFF4e055a)
                ),
              ),
              title: Text('Start a pickup', 
              style: TextStyle(
                color: Color(0xFF4e055a),
                fontWeight: FontWeight.bold
              )
              ),
              subtitle: Text('Prices that are alocated to each period'),
              trailing:Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(Icons.arrow_forward,
                color: Color(0xFF4e055a)
                ),
              )
            ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(40),
              ),
            ),
              const SizedBox(height:20),
            Container(child: const ListTile(
              leading: Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(Icons.calendar_today_outlined,
                color: Color(0xFF4e055a)
                ),
              ),
              title: Text('Pick Up Schedules', 
              style: TextStyle(
                color: Color(0xFF4e055a),
                fontWeight: FontWeight.bold
              )
              ),
              subtitle: Text('Periods at which your trash is taken'),
              trailing:Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(Icons.arrow_forward,
                color: Color(0xFF4e055a)
                ),
              )
            ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(40),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white ,
    child: Row(
      children: [
        IconButton(icon: const Icon(Icons.menu),onPressed: () {}),
       const Spacer(),
        IconButton(icon: const Icon(Icons.home), onPressed: () {}),
        const Spacer(),
        IconButton(icon: const Icon(Icons.money), onPressed: () {}),
      ],
    ),
  ),
    );
  }
}