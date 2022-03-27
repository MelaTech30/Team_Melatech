import 'package:flutter/material.dart';
import 'package:melatech/Waste/trash.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class Trash extends StatelessWidget {
  final List<TrashChart> data;

 Trash({required this.data});

  @override
  Widget build(BuildContext context) {

List<charts.Series<TrashChart, String>> series = [
      charts.Series(
        id: "developers",
        data: data,
        domainFn: (TrashChart series, _) => series.month,
        measureFn: (TrashChart series, _) => series.weight,
        colorFn: (TrashChart series, _) => series.barColor
      )
    ];

    return charts.BarChart(series, animate: true,
      
    );
  }
}