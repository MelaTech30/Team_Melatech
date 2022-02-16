

import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({ Key? key }) : super(key: key);

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
            const SizedBox(height: 15,),
        const  Center(
            child:   Text('Login', 
              style: TextStyle(fontSize: 20,
               color: Colors.white),
              ),
          ),
           const SizedBox(height: 95,),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                ),
                child: TextFormField(
                  decoration: const InputDecoration(
                    icon: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(Icons.email),
                    ),
                    label: Text('Email',
                    style: TextStyle(
                      color: Color(0xFF4e055a)
                    )
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none
                    )
                  ),
                ), 
              ),
             const SizedBox(height: 30,),
              Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                ),
                child: TextFormField(
                  decoration: const InputDecoration(
                    icon: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(Icons.lock),
                    ),
                    label: Text('Password',
                    style:TextStyle(color: Color(0xFF4e055a))
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none
                    )
                  ),
                ), 
              ),
             const SizedBox(height:20),
              Padding(
                padding: const EdgeInsets.only(left:50, right:100),
                child: TextButton(onPressed: (){} , 
             style: ButtonStyle(
                 backgroundColor: MaterialStateProperty.all(Colors.white),
                 foregroundColor: MaterialStateProperty.all(const Color(0xFF4e055a)),
                 shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                   RoundedRectangleBorder(
                     borderRadius: BorderRadius.circular(20),
                   )
                 ),
             ),
             child:
            const Text('Sign in')
            ),
              )
          ],
        ),
      ),
    );
  }
}