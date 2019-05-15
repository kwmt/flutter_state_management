import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

class MyChart extends StatefulWidget {
  @override
  _MyChartState createState() => _MyChartState();

  static Map<String, double> createData() {
    Map<String, double> dataMap = new Map();
    dataMap.putIfAbsent("Flutter", () => 5);
    dataMap.putIfAbsent("React", () => 3);
    dataMap.putIfAbsent("Xamarin", () => 2);
    dataMap.putIfAbsent("Ionic", () => 2);
    return dataMap;
  }

//  static List<Serise<_Problem, String>> createData(
//    double steteMgmtTiimie,
//  ) {}
}

class _MyChartState extends State<MyChart> {
  final seriesList = MyChart.createData();

  @override
  Widget build(BuildContext context) {
    return PieChart(dataMap: seriesList);
//    return PieChart(seriesList,
//        animate: false,
//        defaultRenderer: ArcRendererConfig(arcRendererDecorators: [
//          ArcLabelDecorator(labelPosition: ArclabelPosition)
//        ]));
  }
}

class _Problem {
  const _Problem(this.name, this.time);

  final String name;
  final String time;
}

