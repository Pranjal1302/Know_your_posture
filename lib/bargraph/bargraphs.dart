import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class bargraphs extends StatelessWidget {
  const bargraphs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BarChart(BarChartData(
      maxY: 100,
      minY: 0,
    ));
  }
}
