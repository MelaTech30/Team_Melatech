import 'package:flutter/material.dart';

import 'edit.dart';

class Profile extends StatelessWidget {
  const Profile({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: ListView(
        children:  <Widget> [
         const  SizedBox(height:20),
         const Center(
            child: CircleAvatar(
              backgroundColor: Color(0xFFe5e5e5),
              radius: 70,
              child: Icon(
                Icons.person,
                color: Colors.white,
                size: 115,
              ),
            ),
          ),
        const  SizedBox(height:10),    
          Container(
            height: 90,
            child: Column(
              children: const <Widget> [
                Text('Praise Ewurabena Dakoa Adjei-Mensah'),
                SizedBox(height: 10),
                Text('Praise50@gmail.com'),
                SizedBox(height:10),
                Text('0548448022'),
              ],
            ),
          ),
         const SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.only(left:80, right: 80),
            child: RaisedButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)
              ),
              onPressed: (){
                showModalBottomSheet(context: context, builder: (context) => const Edit());
              },
              child: const Text('Edit Details')
            ),
          ),
        ],
     ),
    );
  }
}