import 'package:flutter/material.dart';

import 'field.dart';

class AddPage extends StatefulWidget {
  const AddPage({Key? key}) : super(key: key);

  @override
  State<AddPage> createState() => _AddPageState();
}

class _AddPageState extends State<AddPage> {
  TimeOfDay _time = const TimeOfDay(hour: 6, minute: 00);

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Color(0xFF4e055a)),
        title: const Padding(
          padding:  EdgeInsets.only(left: 30),
          child:  Text('Create Schedule',
              style: TextStyle(color: Colors.lightBlue)),
        ),
      ),
      backgroundColor: Colors.lightGreen,
      body: ListView(
        children: <Widget>[
         const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(
              'Selected time: ${_time.format(context)}',
              style: const TextStyle(color: Color(0xFF4e055a), fontSize: 30),
            ),
          ),
         const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 80, right: 80),
            child: RaisedButton(
                onPressed: _selectTime, child: const Text('Select Time')),
          ),
        const  SizedBox(
            height: 20,
          ),
         const Padding(
            padding: EdgeInsets.only(left: 10),
            child: Text(
              'Selected day: Monday',
              style: TextStyle(color: Color(0xFF4e055a), fontSize: 30),
            ),
          ),
         const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 80, right: 80),
            child: RaisedButton(
                onPressed: () {
                  showModalBottomSheet(
                      context: context, builder: (context) => const Field());
                },
                child: const Text('Select Day')),
          ),
        ],
      ),
    );
  }
}
