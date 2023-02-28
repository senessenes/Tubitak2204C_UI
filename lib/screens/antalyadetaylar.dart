import 'package:tubitak_2204c/screens/menu.dart';
import 'package:flutter/material.dart';
import 'package:tubitak_2204c/constants.dart';
import 'package:tubitak_2204c/components/reusable_card.dart';
import 'package:tubitak_2204c/components/bottom_button.dart';
import 'akdeniz.dart';

class AntalyaDetaylarPage extends StatelessWidget {
  const AntalyaDetaylarPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 0, 134, 149),
          title: Text("En riskli ilçeler")),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(3, 5, 3, 7),
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                    color: Color.fromARGB(255, 206, 206, 206),
                    blurRadius: 25,
                    spreadRadius: 0.1)
              ]),
              child: IlceKart(
                ilce: "ALANYA",
                nufus: "333.104",
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(3, 5, 3, 7),
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                    color: Color.fromARGB(255, 206, 206, 206),
                    blurRadius: 25,
                    spreadRadius: 0.1)
              ]),
              child: IlceKart(
                ilce: "ALANYA",
                nufus: "333.104",
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(3, 5, 3, 7),
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                    color: Color.fromARGB(255, 206, 206, 206),
                    blurRadius: 25,
                    spreadRadius: 0.1)
              ]),
              child: IlceKart(
                ilce: "ALANYA",
                nufus: "333.104",
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(3, 5, 3, 7),
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                    color: Color.fromARGB(255, 206, 206, 206),
                    blurRadius: 25,
                    spreadRadius: 0.1)
              ]),
              child: IlceKart(
                ilce: "ALANYA",
                nufus: "333.104",
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class IlceKart extends StatelessWidget {
  String ilce = "ALANYA";
  String nufus = "333.104";

  String link =
      "http://t1.gstatic.com/licensed-image?q=tbn:ANd9GcRIDXWNdqxXWtoFWXncvmmWat5mYE6TSMrGN8eYVvnommGzxoI_lAzERJev-4aUBDaz";

  @override
  Widget build(BuildContext context) {
    return ReusableCard(
      colour: kActiveCardColour,
      cardChild: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Text(
            '${this.ilce}',
            style: kLabelTextStyle,
          ),
          Image.network(
              "https://gezievreni.com/wp-content/uploads/2019/02/Antalya-Ilceleri-Alanya.jpg"),
          Text(
            "NÜFUS:${this.nufus}",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w900,
              color: Color.fromARGB(255, 0, 149, 149),
            ),
          ),
        ],
      ),
    );
  }

  IlceKart({this.ilce, this.link, this.nufus});
}
