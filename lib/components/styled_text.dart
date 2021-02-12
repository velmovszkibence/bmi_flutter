import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  StyledText({this.title, this.fontSize, this.fontWeight});

  final String title;
  final double fontSize;
  final FontWeight fontWeight;

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.scaleDown,
      child: Text(
        title,
        style: TextStyle(
          fontSize: fontSize,
          fontWeight: fontWeight,
        ),
      ),
    );
  }
}
