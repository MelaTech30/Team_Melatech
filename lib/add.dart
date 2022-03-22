import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TimeOfDay _time = TimeOfDay(hour: 7, minute: 15);

  void _selectTime() async {
    final TimeOfDay? newTime = await showTimePicker(
      context: context,
      initialTime: _time,
    );
    if (newTime != null) {
      setState(() {
        _time = newTime;
      });
    }
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body:  ListView(
          // mainAxisAlignment: MainAxisAlignment.start,
          children: [           
            SizedBox(height: 20),
            Center(
              child: Text(
                'Selected time: ${_time.format(context)}',
              ),
            ),
            SizedBox(height: 20),
             Padding(
               padding: const EdgeInsets.only(left:80, right: 80),
               child: ElevatedButton(
                onPressed: _selectTime,
                child: Text('SELECT TIME'),
            ),
             ),
          ],        
      ),
    );
  }
}