import 'package:flutter/material.dart';

class ChangeNumber extends StatelessWidget {
  final Function changeNumberCallback;
  final String numberBefore;

  ChangeNumber({this.changeNumberCallback, this.numberBefore});

  @override
  Widget build(BuildContext context) {
    String newNumber;
    int changedNumber;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          child: Container(
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                padding: EdgeInsets.all(20.0),
                decoration: BoxDecoration(),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IntrinsicHeight(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Flexible(
                            flex: 2,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.horizontal(
                                    left: Radius.circular(20.0)),
                                color: Colors.white,
                              ),
                              height:
                                  MediaQuery.of(context).size.height * 0.085,
                              child: TextField(
                                textAlignVertical: TextAlignVertical.center,
                                decoration: InputDecoration.collapsed(
                                  border: InputBorder.none,
                                  enabled: true,
                                  hintText: 'text',
                                  hintStyle: TextStyle(color: Colors.white),
                                ),
                                cursorWidth: 4,
                                enableSuggestions: false,
                                autofocus: true,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.black,
                                  height: 1.0,
                                  fontSize: 50,
                                ),
                                onChanged: (number) {
                                  newNumber = number;
                                },
                              ),
                            ),
                          ),
                          Flexible(
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.horizontal(
                                    right: Radius.circular(20.0)),
                                color: Colors.greenAccent.shade400,
                              ),
                              child: FlatButton(
                                onPressed: () {
                                  if (newNumber != null) {
                                    changedNumber = int.tryParse(newNumber);
                                    changeNumberCallback(changedNumber);
                                  } else {
                                    changeNumberCallback(
                                        int.parse(numberBefore));
                                  }
                                },
                                child: Icon(
                                  Icons.check,
                                  color: Colors.white,
                                ),
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
          ),
        ),
      ],
    );
  }
}
