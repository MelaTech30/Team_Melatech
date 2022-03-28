import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

import 'package:melatech/Waste/trash.dart';
import 'package:melatech/Waste/trash_chart.dart';

// ignore: use_key_in_widget_constructors
class RewardPage extends StatelessWidget {
  final List<TrashChart> data = [
    TrashChart(
      month: 'Jan',
      weight: 50,
      barColor: charts.ColorUtil.fromDartColor(Colors.blue),
    ),
    TrashChart(
      month: 'Feb',
      weight: 20,
      barColor: charts.ColorUtil.fromDartColor(Colors.red),
    ),
    TrashChart(
      month: 'Mar',
      weight: 10,
      barColor: charts.ColorUtil.fromDartColor(Colors.yellow),
    ),
    TrashChart(
      month: 'Apr',
      weight: 70,
      barColor: charts.ColorUtil.fromDartColor(Colors.pink),
    ),
    TrashChart(
      month: 'May',
      weight: 45,
      barColor: charts.ColorUtil.fromDartColor(Colors.green),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        elevation: 0,
        title: const Padding(
          padding: EdgeInsets.only(left: 60),
          child: Text(
            'Reward',
            style: TextStyle(
              color: Colors.white,
              fontSize: 28,
            ),
          ),
        ),
        backgroundColor: Colors.green,
      ),
      // ignore: avoid_unnecessary_containers
      body: Container(
        child: ListView(children: [
          Padding(
            padding: const EdgeInsets.only(left: 50, right: 50),
            child: SizedBox(
                height: 300,
                width: 100,
                child: Trash(
                  data: data,
                )),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 80, right: 80),
            child: FlatButton(
              onPressed: () {},
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              color: Colors.lightGreen,
              child: const Text(
                'Claim Reward',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
