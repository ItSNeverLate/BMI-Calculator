import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/ui/components/custom_card.dart';
import 'package:bmi_calculator/ui/components/icon_container.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

enum Gender {
  male,
  female,
}

class Genders extends StatelessWidget {
  final Gender gender;
  final Function onChanged;

  Genders({@required this.gender, @required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: double.infinity,
        child: Row(
          children: <Widget>[
            Expanded(
              child: CustomCard(
                onPressed: () => onChanged(Gender.male),
                color: gender == Gender.male
                    ? kActiveCardColor
                    : kInactiveCardColor,
                child: IconContainer(
                  icon: FontAwesomeIcons.mars,
                  title: 'MALE',
                  color: gender == Gender.male ? Colors.white : kGrey,
                ),
              ),
            ),
            Expanded(
              child: CustomCard(
                onPressed: () => onChanged(Gender.female),
                color: gender == Gender.female
                    ? kActiveCardColor
                    : kInactiveCardColor,
                child: IconContainer(
                  icon: FontAwesomeIcons.venus,
                  title: 'FEMALE',
                  color: gender == Gender.female ? Colors.white : kGrey,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
