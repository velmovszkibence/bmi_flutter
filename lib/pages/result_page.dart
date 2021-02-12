import 'package:auto_size_text/auto_size_text.dart';
import 'package:bmi_calculator/components/rectangle_button.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  ResultPage(
      {@required this.result,
      @required this.resultText,
      @required this.resultParagraph});

  final String result;
  final String resultText;
  final String resultParagraph;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 14.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Spacer(),
              Expanded(
                flex: 2,
                child: AutoSizeText(
                  resultText.toUpperCase(),
                  presetFontSizes: [40, 20, 14],
                  style: TextStyle(fontSize: 24),
                  textAlign: TextAlign.center,
                ),
              ),
              Expanded(
                flex: 4,
                child: AutoSizeText(
                  resultParagraph,
                  presetFontSizes: [40, 20, 14],
                  maxLines: 10,
                  style: TextStyle(height: 1.6),
                  textAlign: TextAlign.center,
                ),
              ),
              Flexible(
                fit: FlexFit.loose,
                child: RectangleButton(
                  width: 100,
                  height: 100,
                  color: kFullWidthButtonColor,
                  textChild: Text(
                    'Vissza',
                    style: TextStyle(fontSize: 30.0),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
