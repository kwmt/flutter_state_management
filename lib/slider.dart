import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:slider_state_management/MySchedule.dart';

class MySlider extends StatefulWidget {
  @override
  _MySliderState createState() => _MySliderState();
}

class _MySliderState extends State<MySlider> {
  var _value = 0.5;

  @override
  Widget build(BuildContext context) {
    final schedule = Provider.of<MySchedule>(context);
    return Slider(
      value: schedule.stateManagementTime,
      onChanged: (value) => schedule.stateManagementTime = value,
    );
  }

  void _onValueChanged(double value) {
    setState(() => _value = value);
  }
}
