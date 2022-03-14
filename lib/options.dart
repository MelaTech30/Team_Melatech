import 'package:flutter/material.dart';

class OptionsPage extends StatelessWidget {
  const OptionsPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Colors.white,
      body: ListView(
        children: <Widget> [
         const  SizedBox( height: 20),
             Padding(
               padding: const EdgeInsets.only(left:25),
               child: Row(
                  children: const <Widget> [
                    Icon(
                      Icons.location_on_outlined,
                      color: Color(0xFF4e055a),
                       size: 30
                    ),
                    SizedBox( width: 10),
                    Text(
                      'My location',
                      style: TextStyle(
                        color: Color(0xFF4e055a),
                        fontSize: 20,
                      ),
                    )
                  ],            
            ),
          ),
          const  SizedBox( height: 20),
             Padding(
               padding: const EdgeInsets.only(left:25),
               child: Row(
                  children: const <Widget> [
                    Icon(
                      Icons.money_rounded,
                      color: Color(0xFF4e055a),
                      size: 30
                    ),
                    SizedBox( width: 10),
                    Text(
                      'Trash Cash balance',
                      style: TextStyle(
                        color: Color(0xFF4e055a),
                        fontSize: 20,
                      ),
                    )
                  ],            
            ),
          ),
          const  SizedBox( height: 20),
             Padding(
               padding: const EdgeInsets.only(left:25),
               child: Row(
                  children: const <Widget> [
                    Icon(
                      Icons.checklist_outlined,
                      color: Color(0xFF4e055a),
                       size: 30
                    ),
                    SizedBox( width: 10),
                    Text(
                      'Invoice',
                      style: TextStyle(
                        color: Color(0xFF4e055a),
                        fontSize: 20,
                      ),
                    )
                  ],            
            ),
          ),
          const  SizedBox( height: 20),
             Padding(
               padding: const EdgeInsets.only(left:25),
               child: Row(
                  children: const <Widget> [
                    Icon(
                      Icons.location_on_outlined,
                      color: Color(0xFF4e055a),
                       size: 30
                    ),
                    SizedBox( width: 10),
                    Text(
                      'My location',
                      style: TextStyle(
                        color: Color(0xFF4e055a),
                        fontSize: 20,
                      ),
                    )
                  ],            
            ),
          ),
        ],
      ),
    );
  }
}