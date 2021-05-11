import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/styles.dart';
import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {
  final String title;
  final Function onPressed;

  BottomButton({@required this.title, @required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
          height: kBottomContainerHeight,
          color: kAccentColor,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 20.0),
            child: Center(
              child: Text(
                title,
                style: kBigButtonTextStyle,
              ),
            ),
          )),
    );
  }
}
