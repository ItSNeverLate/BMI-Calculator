import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/ui/components/bottom_button.dart';
import 'package:bmi_calculator/ui/pages/input/genders.dart';
import 'package:bmi_calculator/ui/pages/input/height.dart';
import 'package:bmi_calculator/ui/pages/input/weight_age.dart';
import 'package:bmi_calculator/ui/pages/result/index.dart';
import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender gender;
  int height = 180;
  int weight = 80;
  int age = 25;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: AppBar(
        backgroundColor: kActiveCardColor,
        title: Text(kAppTitle),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Genders(
            gender: gender,
            onChanged: (value) => setState(() => gender = value),
          ),
          Height(
            height: height,
            onChanged: (value) => setState(() => height = value),
          ),
          WeightAge(
            weight: weight,
            age: age,
            onWeightChanged: (value) => setState(() => weight = value),
            onAgeChanged: (value) => setState(() => age = value),
          ),
          BottomButton(
            title: 'CALCULATE',
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) =>
                    ResultPage(height: height, weight: weight),
              ),
            ),
          )
        ],
      ),
    );
  }
}
