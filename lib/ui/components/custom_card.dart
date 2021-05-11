import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final Color color;
  final Function onPressed;
  final Widget child;

  CustomCard({@required this.color, @required this.child, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: GestureDetector(
        onTap: onPressed,
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: child,
        ),
      ),
    );
  }
}
