import 'package:bmi_calculator/styles.dart';
import 'package:flutter/material.dart';

class IconContainer extends StatelessWidget {
  final IconData icon;
  final String title;
  final Color color;

  IconContainer(
      {@required this.icon, @required this.title, @required this.color});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 70.0,
          color: color,
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(
          title,
          style: kLabelTextStyle.copyWith(color: color),
        )
      ],
    );
  }
}
