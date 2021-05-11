import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/styles.dart';
import 'package:bmi_calculator/ui/components/custom_card.dart';
import 'package:flutter/material.dart';

class Height extends StatelessWidget {
  final int height;
  final Function onChanged;

  Height({@required this.height, @required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: double.infinity,
        child: CustomCard(
          color: kActiveCardColor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text(
                'HEIGHT',
                style: kLabelTextStyle,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                textBaseline: TextBaseline.alphabetic,
                crossAxisAlignment: CrossAxisAlignment.baseline,
                children: <Widget>[
                  Text(
                    height.toString(),
                    style: kNumberTextStyle,
                  ),
                  Text(
                    'cm',
                    style: kLabelTextStyle,
                  ),
                ],
              ),
              SliderTheme(
                data: SliderThemeData(
                  thumbColor: kAccentColor,
                  overlayColor: kAccentColor.withAlpha(49),
                  thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
                  overlayShape: RoundSliderOverlayShape(overlayRadius: 30.0),
                  activeTrackColor: kAccentColor,
                  inactiveTrackColor: kGrey,
                ),
                child: Slider(
                  min: 120.0,
                  max: 220.0,
                  value: height.toDouble(),
                  onChanged: (value) => onChanged(value.toInt()),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
