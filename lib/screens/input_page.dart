import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_calculator/components/icon_content.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/screens/akdeniz.dart';
import 'package:bmi_calculator/components/bottom_button.dart';
import 'package:bmi_calculator/components/round_icon_button.dart';
import 'package:bmi_calculator/calculator_brain.dart';

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender;
  int height = 180;
  int sicaklik = 0;
  int age = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 0, 134, 149),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: ReusableCard(
              colour: kActiveCardColour,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(
                    'SICAKLIK ARTIŞI',
                    style: kLabelTextStyle,
                  ),
                  Text(
                    "${sicaklik.toString()} C",
                    style: kNumberTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                          margin: EdgeInsets.only(left: 30),
                          child: RawMaterialButton(
                            onPressed: () {
                              setState(() {
                                sicaklik--;
                              });
                            },
                            elevation: 2.0,
                            fillColor: Color.fromARGB(255, 0, 154, 182),
                            child: Icon(
                              FontAwesomeIcons.minus,
                              size: 65,
                            ),
                            padding: EdgeInsets.all(15.0),
                            shape: CircleBorder(),
                          )),
                      Container(
                          margin: EdgeInsets.only(right: 30),
                          child: RawMaterialButton(
                            onPressed: () {
                              setState(() {
                                sicaklik++;
                              });
                            },
                            elevation: 2.0,
                            fillColor: Color.fromARGB(255, 0, 154, 182),
                            child: Icon(
                              FontAwesomeIcons.plus,
                              size: 65,
                            ),
                            padding: EdgeInsets.all(15.0),
                            shape: CircleBorder(),
                          )),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 100,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 0, 134, 149),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AkdenizBolgesi(),
                      ));
                },
                child: Text(
                  "Hesapla",
                  style: kLargeButtonTextStyle,
                )),
          )
        ],
      ),
    );
  }
}
