import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:slider_state_management/MySchedule.dart';

class MySlider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final schedule = Provider.of<MySchedule>(context);
    return Slider(
      value: schedule.stateManagementTime,
      onChanged: (value) => schedule.stateManagementTime = value,
    );
  }
}
