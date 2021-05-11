import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/styles.dart';
import 'package:bmi_calculator/ui/components/custom_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class WeightAge extends StatelessWidget {
  final int weight;

  final int age;

  final Function onWeightChanged;
  final Function onAgeChanged;

  WeightAge({
    @required this.weight,
    @required this.age,
    @required this.onWeightChanged,
    @required this.onAgeChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: double.infinity,
        child: Row(
          children: <Widget>[
            Expanded(
              child: CustomCard(
                color: kActiveCardColor,
                child: Container(
                  width: double.infinity,
                  child: CustomCard(
                    color: kActiveCardColor,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Text(
                          'WEIGHT',
                          style: kLabelTextStyle,
                        ),
                        Text(
                          weight.toString(),
                          style: kNumberTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            FloatingActionButton(
                              heroTag: "decrease_weight",
                              backgroundColor: kGrey,
                              child: Icon(FontAwesomeIcons.minus),
                              onPressed: () => onWeightChanged(weight - 1),
                            ),
                            FloatingActionButton(
                              heroTag: "increase_weight",
                              backgroundColor: kGrey,
                              child: Icon(FontAwesomeIcons.plus),
                              onPressed: () => onWeightChanged(weight + 1),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: CustomCard(
                color: kActiveCardColor,
                child: Container(
                  width: double.infinity,
                  child: CustomCard(
                    color: kActiveCardColor,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Text(
                          'AGE',
                          style: kLabelTextStyle,
                        ),
                        Text(
                          age.toString(),
                          style: kNumberTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            FloatingActionButton(
                              heroTag: "decrease_age",
                              backgroundColor: kGrey,
                              child: Icon(FontAwesomeIcons.minus),
                              onPressed: () => onAgeChanged(age - 1),
                            ),
                            FloatingActionButton(
                              heroTag: "increase_age",
                              backgroundColor: kGrey,
                              child: Icon(FontAwesomeIcons.plus),
                              onPressed: () => onAgeChanged(age + 1),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
