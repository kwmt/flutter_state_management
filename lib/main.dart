import 'package:flutter/material.dart';
import 'package:slider_state_management/chart.dart';
import 'package:slider_state_management/slider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}


class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Time spent'),
        leading: Icon(Icons.menu),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(32),
              child: MyChart(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(32),
            child: MySlider(),
          )
        ],
      ),
    );
  }
}
