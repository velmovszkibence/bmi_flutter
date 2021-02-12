import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';

class IconContent extends StatelessWidget {
  IconContent({@required this.title, @required this.icon});
  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return new LayoutBuilder(builder: (context, constraint) {
      return new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: constraint.maxHeight / 2,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
          Text(
            title,
            style: kTitleStyle,
          ),
        ],
      );
    });
  }
}
