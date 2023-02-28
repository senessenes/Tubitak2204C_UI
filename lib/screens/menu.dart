import 'package:flutter/material.dart';
import 'akdeniz.dart';
import 'ege.dart';
import 'marmara.dart';
import 'karadeniz.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:bmi_calculator/components/bottom_button.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 134, 149),
      body: Column(children: [
        Container(
          margin: EdgeInsets.only(top: 30),
          child: TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AkdenizBolgesi(),
                    ));
              },
              child: Text(
                "Akdeniz Bölgesi",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 16),
              )),
        ),
        Divider(
          height: 10,
        ),
        TextButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => KaradenizBolgesi(),
                  ));
            },
            child: Text(
              "Karadeniz Bölgesi",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 16),
            )),
        Divider(
          height: 10,
        ),
        TextButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => EgeBolgesi(),
                  ));
            },
            child: Text(
              "Ege Bölgesi",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 16),
            )),
        Divider(
          height: 10,
        ),
        TextButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MarmaraBolgesi(),
                  ));
            },
            child: Text(
              "Marmara Bölgesi",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 16),
            )),
      ]),
    );
  }
}
