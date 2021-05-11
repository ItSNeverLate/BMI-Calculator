import 'dart:math';

import 'package:flutter/cupertino.dart';

class BMIBrain {
  int height;
  int weight;
  double _bmi;

  BMIBrain({@required this.height, @required this.weight}) {
    _bmi = weight / pow(height / 100, 2);
  }

  getBMI() => _bmi.toStringAsFixed(1);

  getResult() {
    if (_bmi >= 25.0) {
      return "OVERWEIGHT";
    } else if (_bmi >= 18.5) {
      return "NORMAL";
    } else {
      return "UNDERWEIGHT";
    }
  }

  getInterpretation() {
    if (_bmi >= 25.0) {
      return "You need to stop eating carbohydrate!";
    } else if (_bmi >= 18.5) {
      return "You are in shape!";
    } else {
      return "Don't worry, eat more!";
    }
  }
}
