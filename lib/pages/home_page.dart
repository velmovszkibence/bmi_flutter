import 'package:bmi_calculator/calculator.dart';
import 'package:bmi_calculator/components/change_number.dart';
import 'package:bmi_calculator/components/custom_card.dart';
import 'package:bmi_calculator/components/icon_content.dart';
import 'package:bmi_calculator/components/rectangle_button.dart';
import 'package:bmi_calculator/components/styled_text.dart';
import 'package:bmi_calculator/config/base_widget.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/pages/result_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

enum Gender { female, male }

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Gender selectedGender;
  int age = 30;
  int height = 170;
  int weight = 80;

  @override
  Widget build(BuildContext context) {
    return BaseWidget(builder: (context, sizeConfig) {
      var defaultSize = sizeConfig.screenWidth;
      return Scaffold(
        resizeToAvoidBottomInset: false,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(defaultSize * 2),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  flex: 3,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Expanded(
                        child: CustomCard(
                          childWidth: defaultSize,
                          borderRadius: defaultSize * 2,
                          margin: EdgeInsets.all(defaultSize),
                          color: selectedGender == Gender.female
                              ? kSelectedColor
                              : kInactiveColor,
                          child: Container(
                            child: IconContent(
                              title: 'Nő',
                              icon: FontAwesomeIcons.venus,
                            ),
                          ),
                          onPress: () {
                            setState(() {
                              selectedGender = Gender.female;
                            });
                          },
                        ),
                      ),
                      Expanded(
                        child: CustomCard(
                          childWidth: defaultSize,
                          borderRadius: defaultSize * 2,
                          margin: EdgeInsets.all(defaultSize),
                          color: selectedGender == Gender.male
                              ? kSelectedColor
                              : kInactiveColor,
                          child: Container(
                            child: IconContent(
                              title: 'Férfi',
                              icon: FontAwesomeIcons.mars,
                            ),
                          ),
                          onPress: () {
                            setState(() {
                              selectedGender = Gender.male;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: CustomCard(
                    childWidth: defaultSize * 100,
                    borderRadius: defaultSize * 2,
                    margin: EdgeInsets.all(defaultSize),
                    padding: EdgeInsets.all(
                      defaultSize * 1.2,
                    ),
                    color: kInactiveColor,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        StyledText(
                          title: 'Magasság',
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Expanded(
                                flex: 2,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        showModalBottomSheet(
                                          isScrollControlled: true,
                                          backgroundColor:
                                              Colors.white.withOpacity(0.02),
                                          context: context,
                                          builder: (context) => ChangeNumber(
                                            numberBefore: height.toString(),
                                            changeNumberCallback: (newNumber) {
                                              setState(() {
                                                height = newNumber;
                                              });
                                              Navigator.pop(context);
                                            },
                                          ),
                                        );
                                      },
                                      child: StyledText(
                                        title: height.toString(),
                                        fontSize: 90,
                                      ),
                                    ),
                                    StyledText(
                                      title: 'cm',
                                      fontSize: defaultSize * 1.8,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
                                  children: [
                                    Flexible(
                                      flex: 3,
                                      child: RectangleButton(
                                          height: 80,
                                          icon: FontAwesomeIcons.plus,
                                          color: kRectangleButtonColor,
                                          onPressed: () {
                                            setState(() {
                                              height++;
                                            });
                                          }),
                                    ),
                                    Spacer(),
                                    Flexible(
                                      flex: 3,
                                      child: RectangleButton(
                                          height: 80,
                                          icon: FontAwesomeIcons.minus,
                                          color: kRectangleButtonColor,
                                          onPressed: () {
                                            setState(() {
                                              height--;
                                            });
                                          }),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 4,
                  child: Row(
                    children: [
                      Expanded(
                        child: CustomCard(
                          childWidth: defaultSize,
                          borderRadius: defaultSize * 2,
                          margin: EdgeInsets.all(defaultSize),
                          padding: EdgeInsets.only(
                            left: defaultSize * 1.05,
                            right: defaultSize * 1.05,
                            bottom: defaultSize * 1.05,
                          ),
                          color: kInactiveColor,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                child: StyledText(
                                  title: 'Súly',
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Expanded(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        showModalBottomSheet(
                                          isScrollControlled: true,
                                          backgroundColor:
                                              Colors.white.withOpacity(0.02),
                                          context: context,
                                          builder: (context) => ChangeNumber(
                                            numberBefore: weight.toString(),
                                            changeNumberCallback: (newNumber) {
                                              setState(() {
                                                weight = newNumber;
                                              });
                                              Navigator.pop(context);
                                            },
                                          ),
                                        );
                                      },
                                      child: StyledText(
                                        title: weight.toString(),
                                        fontSize: 200,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    StyledText(
                                      title: 'kg',
                                      fontSize: defaultSize * 1.8,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Flexible(
                                      flex: 5,
                                      child: FittedBox(
                                        fit: BoxFit.scaleDown,
                                        child: RectangleButton(
                                          height: 50,
                                          width: 100,
                                          icon: FontAwesomeIcons.minus,
                                          color: kSecondaryRectangleButtonColor,
                                          onPressed: () {
                                            setState(() {
                                              weight--;
                                            });
                                          },
                                        ),
                                      ),
                                    ),
                                    Spacer(),
                                    Flexible(
                                      flex: 5,
                                      child: FittedBox(
                                        fit: BoxFit.scaleDown,
                                        child: RectangleButton(
                                          height: 50,
                                          width: 100,
                                          icon: FontAwesomeIcons.plus,
                                          color: kSecondaryRectangleButtonColor,
                                          onPressed: () {
                                            setState(() {
                                              weight++;
                                            });
                                          },
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: CustomCard(
                          childWidth: defaultSize,
                          borderRadius: defaultSize * 2,
                          margin: EdgeInsets.all(defaultSize),
                          padding: EdgeInsets.only(
                            left: defaultSize * 1.05,
                            right: defaultSize * 1.05,
                            bottom: defaultSize * 1.05,
                          ),
                          color: kInactiveColor,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                child: StyledText(
                                  title: 'Életkor',
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Expanded(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        showModalBottomSheet(
                                          isScrollControlled: true,
                                          backgroundColor:
                                              Colors.white.withOpacity(0.02),
                                          context: context,
                                          builder: (context) => ChangeNumber(
                                            numberBefore: age.toString(),
                                            changeNumberCallback: (newNumber) {
                                              setState(() {
                                                age = newNumber;
                                              });
                                              Navigator.pop(context);
                                            },
                                          ),
                                        );
                                      },
                                      child: StyledText(
                                        title: age.toString(),
                                        fontSize: 200,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    StyledText(
                                      title: 'év',
                                      fontSize: defaultSize * 1.8,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Flexible(
                                      flex: 5,
                                      child: FittedBox(
                                        fit: BoxFit.scaleDown,
                                        child: RectangleButton(
                                          height: 50,
                                          width: 100,
                                          icon: FontAwesomeIcons.minus,
                                          color: kSecondaryRectangleButtonColor,
                                          onPressed: () {
                                            setState(() {
                                              age--;
                                            });
                                          },
                                        ),
                                      ),
                                    ),
                                    Spacer(),
                                    Flexible(
                                      flex: 5,
                                      child: FittedBox(
                                        fit: BoxFit.scaleDown,
                                        child: RectangleButton(
                                          height: 50,
                                          width: 100,
                                          icon: FontAwesomeIcons.plus,
                                          color: kSecondaryRectangleButtonColor,
                                          onPressed: () {
                                            setState(() {
                                              age++;
                                            });
                                          },
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Flexible(
                  fit: FlexFit.tight,
                  child: RectangleButton(
                    textChild: Text(
                      'Számítás',
                      style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    color: kFullWidthButtonColor,
                    width: defaultSize * 100,
                    onPressed: () {
                      Calculator calculator = Calculator(
                        age: age,
                        weight: weight,
                        height: height,
                        gender: selectedGender.toString(),
                      );

                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ResultPage(
                                    result: calculator.calculateBMI(),
                                    resultText: selectedGender == Gender.male
                                        ? calculator.getMenResult()
                                        : calculator.getWomenResult(),
                                    resultParagraph:
                                        selectedGender == Gender.male
                                            ? calculator.getMenParagraph()
                                            : calculator.getWomenParagraph(),
                                  )));
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    });
  }
}
