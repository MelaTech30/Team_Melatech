import 'package:flutter/material.dart';
import 'package:melatech/Food/invoice.dart';

class OptionsPage extends StatelessWidget {
  const OptionsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: <Widget>[
          const SizedBox(height: 20),
          // Padding(
          //   padding: const EdgeInsets.only(left: 10),
          //   child: Row(
          //     children: const <Widget>[
          //       Icon(Icons.location_on_sharp),
          //       SizedBox(width: 10),
          //       Text(
          //         'Location',
          //         style: TextStyle(color: Color(0xFF4e055a), fontSize: 20),
          //       ),
          //     ],
          //   ),
          // ),
          // const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const InvoicePage()));
              },
              child: Row(
                children: const <Widget>[
                  Icon(Icons.checklist),
                  SizedBox(width: 10),
                  Text(
                    'Invoice',
                    style: TextStyle(color: Color(0xFF4e055a), fontSize: 20),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Row(
              children: const <Widget>[
                Icon(
                  Icons.money,
                  size: 25,
                ),
                SizedBox(width: 10),
                Text(
                  'Balance',
                  style: TextStyle(color: Color(0xFF4e055a), fontSize: 20),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
