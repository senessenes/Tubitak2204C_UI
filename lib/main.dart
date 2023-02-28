import 'package:flutter/material.dart';
import 'package:bmi_calculator/screens/input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color.fromARGB(255, 127, 217, 255),
        scaffoldBackgroundColor: Color.fromARGB(255, 255, 255, 255),
      ),
      home: InputPage(),
    );
  }
}
