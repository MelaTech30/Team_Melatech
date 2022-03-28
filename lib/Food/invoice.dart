import 'package:flutter/material.dart';

class InvoicePage extends StatelessWidget {
  const InvoicePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.only(left: 80),
          child: Text('Invoice'),
        ),
        elevation: 0,
        backgroundColor: Colors.green,
      ),
    );
  }
}
