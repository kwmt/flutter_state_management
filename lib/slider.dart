import 'package:flutter/material.dart';

class MySlider extends StatefulWidget {
  @override
  _MySliderState createState() => _MySliderState();
}

class _MySliderState extends State<MySlider> {
  var _value = 0.5;

  @override
  Widget build(BuildContext context) {
    return Slider(
      value: _value,
      onChanged: _onValueChanged,
    );
  }

  void _onValueChanged(double value) {
    setState(() => _value = value);
  }
}
