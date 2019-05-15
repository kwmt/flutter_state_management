import 'dart:async';

import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';
import 'package:provider/provider.dart';
import 'package:slider_state_management/MySchedule.dart';

class MyChart extends StatelessWidget {
//  final seriesList = createData();


  @override
  Widget build(BuildContext context) {
    return Consumer<MySchedule>(builder: (context, scheduler, _) => PieChart(dataMap: createData(
      scheduler.stateManagementTime
    )));
//    return PieChart(seriesList,
//        animate: false,
//        defaultRenderer: ArcRendererConfig(arcRendererDecorators: [
//          ArcLabelDecorator(labelPosition: ArclabelPosition)
//        ]));
  }

  static Map<String, double> createData(double newValue) {
    Map<String, double> dataMap = new Map();
    dataMap.putIfAbsent("Flutter", () => newValue);
    dataMap.putIfAbsent("React", () => 3);
    dataMap.putIfAbsent("Xamarin", () => 2);
    dataMap.putIfAbsent("Ionic", () => 2);
    return dataMap;
  }

//  static List<Serise<_Problem, String>> createData(
//    double steteMgmtTiimie,
//  ) {}
}

class _Problem {
  const _Problem(this.name, this.time);

  final String name;
  final String time;
}

