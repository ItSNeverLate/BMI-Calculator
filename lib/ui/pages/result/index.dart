import 'package:bmi_calculator/bmi_brain.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/styles.dart';
import 'package:bmi_calculator/ui/components/bottom_button.dart';
import 'package:bmi_calculator/ui/components/custom_card.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  final int height;
  final int weight;

  ResultPage({@required this.height, @required this.weight});

  @override
  Widget build(BuildContext context) {
    BMIBrain bmiCalculator = BMIBrain(height: height, weight: weight);

    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: AppBar(
        backgroundColor: kActiveCardColor,
        title: Text(kAppTitle),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Result',
                style: kNumberTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: CustomCard(
              color: kActiveCardColor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    bmiCalculator.getResult(),
                    style: kLabelTextStyle.copyWith(color: Colors.green),
                  ),
                  Text(
                    bmiCalculator.getBMI(),
                    style: kNumberTextStyle.copyWith(fontSize: 80.0),
                  ),
                  Text(
                    bmiCalculator.getInterpretation(),
                    textAlign: TextAlign.center,
                    style: kLabelTextStyle.copyWith(color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
            title: 'Re-CALCULATE',
            onPressed: () => Navigator.pop(context),
          )
        ],
      ),
    );
  }
}
