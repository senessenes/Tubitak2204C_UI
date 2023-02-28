import 'package:tubitak_2204c/screens/antalyadetaylar.dart';
import 'package:tubitak_2204c/screens/menu.dart';
import 'package:flutter/material.dart';
import 'input_page.dart';
import 'package:tubitak_2204c/constants.dart';
import 'package:tubitak_2204c/components/reusable_card.dart';
import 'package:tubitak_2204c/components/bottom_button.dart';

class MarmaraBolgesi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => InputPage(),
            ));
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text("Marmara Bölgesi"),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MenuPage(),
                      ));
                },
                icon: Icon(
                  Icons.menu,
                  size: 30,
                )),
          ],
          backgroundColor: Color.fromARGB(255, 0, 134, 149),
        ),
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
                child: SehirKart(
                  rakim: "39m",
                  nufus: "2.619.832",
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
                child: SehirKart(
                  rakim: "39m",
                  nufus: "2.619.832",
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
                child: SehirKart(
                  rakim: "39m",
                  nufus: "2.619.832",
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
                child: SehirKart(
                  rakim: "39m",
                  nufus: "2.619.832",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SehirKart extends StatelessWidget {
  String il = "ANTALYA";
  String nufus = "2.619.832";
  String rakim = "39m";
  String link =
      "https://gezievreni.com/wp-content/uploads/2019/02/Antalya-Ilceleri-Alanya.jpg";

  @override
  Widget build(BuildContext context) {
    return ReusableCard(
      colour: kActiveCardColour,
      cardChild: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Text(
            'ANTALYA',
            style: kLabelTextStyle,
          ),
          Image.network(
              "https://gezievreni.com/wp-content/uploads/2019/02/Antalya-Ilceleri-Alanya.jpg"),
          Text(
            "RAKIM:${this.rakim}",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w900,
              color: Color.fromARGB(255, 0, 149, 149),
            ),
          ),
          Text(
            "NÜFUS${this.nufus}",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w900,
              color: Color.fromARGB(255, 0, 149, 149),
            ),
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 0, 134, 149)),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AntalyaDetaylarPage(),
                    ));
              },
              child: Text(
                "Detaylar",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 16),
              ))
        ],
      ),
    );
  }

  SehirKart({this.il, this.link, this.nufus, this.rakim});
}
