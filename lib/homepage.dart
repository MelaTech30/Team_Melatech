

// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:ecocycle/loginpage.dart';

class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
           PopupMenuButton(
  icon: const Icon(
    Icons.more_vert,
    color: Color(0xFF4e055a)
  ),
  itemBuilder: (BuildContext context) => <PopupMenuEntry>[
  const PopupMenuItem(     
      child: ListTile(
        leading: Icon(
          Icons.person,
          color: Color(0xFF4e055a),
        ),
        title: Text(
          'About us',
          style:
           TextStyle(
             color: Color(0xFF4e055a),
        ),
      ),
    ),
  ),
    const PopupMenuItem(child: ListTile(
      leading: Icon(
        Icons.settings,
        color: Color(0xFF4e055a),
      ),
      title:  Text(
        'Settings',
         style:
           TextStyle(
             color: Color(0xFF4e055a),
        ),
      ),
    )),
     PopupMenuItem(
        onTap: (){
        Navigator.pop(context,
         MaterialPageRoute(
           builder: (context) => const LoginPage()
      )
    );},
      child: 
    const  ListTile(
      leading: Icon(
        Icons.logout,
        color: Color(0xFF4e055a),       
      ),
       title: Text(
          'Logout',
          style:
           TextStyle(
             color: Color(0xFF4e055a),
          ),
        ),
    )),  
  ],
),
        ],
      ),
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
           const SizedBox(height:20),
            Padding(
              padding: const EdgeInsets.only(left:70, right:70),
              child: Card(
                clipBehavior: Clip.antiAlias,
                child: Image.asset('image/image2.jpg',
                width:80,
                height:280
                ),              
              ),
            ),
            const SizedBox(height:10),
            Padding(
              padding: const EdgeInsets.all(20),
              child: FlatButton(onPressed: () {},
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5)
              ),
               color: const Color(0xFF4e055a),
              child: const Text('Waste Management', 
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
              ),
              ),
              ),
            ),
            const SizedBox(height:20),
            Padding(
              padding: const EdgeInsets.all(30),
              child: Card(
                clipBehavior: Clip.antiAlias,
                child: Image.asset('image/image3.png'),              
              ),
            ),
            const SizedBox(height:10),
            Padding(
              padding: const EdgeInsets.only(left:70, right: 70),
              child: FlatButton(onPressed: () {},
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5)
              ),
               color: const Color(0xFF4e055a),
              child: const Text('Farm Produce', 
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
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