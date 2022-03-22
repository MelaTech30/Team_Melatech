import 'package:agritech_cycle/slow.dart';
import 'package:flutter/material.dart';
import 'package:modal_side_sheet/modal_side_sheet.dart';

class SideSheet extends StatelessWidget {
  const SideSheet({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: <Widget> [
        ElevatedButton(
    onPressed: () {
        showModalSideSheet(
            context: context,
            // ignoreAppBar: false,
            body: const Slow());
        },
    child: const Text("Show Modal Side Sheet")),
      ],),
      
    );
  }
}