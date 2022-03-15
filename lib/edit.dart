
import 'package:flutter/material.dart';

class Edit extends StatelessWidget {
  const Edit({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: <Widget>[
         const SizedBox( height:20),
         const Text('Edit'),
         const SizedBox(height: 10,),
         Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: TextFormField(
                  decoration: const InputDecoration(
                      icon: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(Icons.person, color: Color(0xFF4e055a)),
                      ),
                      label: Text('Name',
                          style: TextStyle(color: Color(0xFF4e055a))),
                      border: OutlineInputBorder(borderSide: BorderSide.none)),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: TextFormField(
                  decoration: const InputDecoration(
                      icon: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(Icons.email, color: Color(0xFF4e055a)),
                      ),
                      label: Text('Email',
                          style: TextStyle(color: Color(0xFF4e055a))),
                      border: OutlineInputBorder(borderSide: BorderSide.none)),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: TextFormField(
                  decoration: const InputDecoration(
                      icon: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(Icons.call, color: Color(0xFF4e055a)),
                      ),
                      label: Text('Phone',
                          style: TextStyle(color: Color(0xFF4e055a))),
                      border: OutlineInputBorder(borderSide: BorderSide.none)),
                ),
              ),
              RaisedButton(
                shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20)
              ),
                onPressed: (){},
                child: const Text('Confirm'),
              ),
            ],
          ),
         );
      }
   }