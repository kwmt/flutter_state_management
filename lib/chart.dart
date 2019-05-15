import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

_MyChartState chartState;

class MyChart extends StatefulWidget {
  @override
  _MyChartState createState() {
    chartState = _MyChartState();
    return chartState;
  }

  static Map<String, double> createData(double value) {
    Map<String, double> dataMap = new Map();
    dataMap.putIfAbsent("Flutter", () => value);
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
  var seriesList = MyChart.createData(5);

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

