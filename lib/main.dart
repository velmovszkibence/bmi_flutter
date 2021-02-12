import 'package:flutter/material.dart';
import 'package:bmi_calculator/pages/home_page.dart';
import 'package:flutter/services.dart';
import 'constants.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    return MaterialApp(
      home: HomePage(),
      theme: ThemeData.dark().copyWith(
        textTheme:
            ThemeData.dark().textTheme.apply(fontFamily: 'Roboto-Italic'),
        primaryColor: kPrimaryColor,
        accentColor: kAccentColor,
        scaffoldBackgroundColor: kScaffoldBackgroundColor,
      ),
    );
  }
}
