import 'dart:ui';
import 'package:abruza_mtg_panel/About.dart';
import 'package:abruza_mtg_panel/PlayerPanel.dart';
import 'package:abruza_mtg_panel/ThreeFourPlayerPanel.dart';
import 'package:abruza_mtg_panel/FiveSixPlayerPanel.dart';
import 'package:abruza_mtg_panel/TwoPlayerPanel.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  debugPaintSizeEnabled = false;
  runApp(MaterialApp(
      //this is a function to run our app and it takes a widgets as a paramether, which is the materialapp (the app itself)
      title: "Azurba's MTG Player Panel", //title for the  app
      home:
          Home() //homepage of our app. You can pass a widget such as a container, or a class (Home()).
      ));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Azurba's MTG Player Panel"),
          centerTitle: true,
          backgroundColor: Colors.black87,
        ),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
            child: Column(children: [
          Padding(
            padding: EdgeInsets.fromLTRB(1, 15, 1, 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("img/allMana2.png", height: 60, width: 260)
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(1, 0, 1, 20),
                child: Container(
                  width: 215,
                  child: ElevatedButton(
                      child: Text(
                        "Player Panel",
                        style: TextStyle(fontSize: 29.0, color: Colors.black),
                      ),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => PlayerPanel()));
                      },
                      style: ElevatedButton.styleFrom(primary: Color.fromRGBO(255, 255, 204, 1))),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(1, 0, 1, 20),
                child: Container(
                    width: 215,
                    child: ElevatedButton(
                        child: Text(
                          "2 Players",
                          style: TextStyle(fontSize: 29.0, color: Colors.black),
                        ),
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => TwoPlayerPanel()));
                        },
                        style: ElevatedButton.styleFrom(
                            primary: Color.fromRGBO(153, 204, 255, 1)))),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(1, 0, 1, 20),
                child: Container(
                  width: 215,
                  child: ElevatedButton(
                      child: Text(
                        "3-4 Players",
                        style: TextStyle(fontSize: 29.0, color: Colors.black),
                      ),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => ThreeFourPlayerPanel()));
                      },
                      style: ElevatedButton.styleFrom(
                          primary: Color.fromRGBO(192, 192, 192, 1))),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(1, 0, 1, 20),
                child: Container(
                    width: 215,
                    child: ElevatedButton(
                        child: Text(
                          "5-6 Players",
                          style: TextStyle(fontSize: 29.0, color: Colors.black),
                        ),
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => FiveSixPlayerPanel()));
                        },
                        style: ElevatedButton.styleFrom(
                            primary: Color.fromRGBO(1255, 153, 153, 1)))),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(1, 0, 1, 20),
                child: Container(
                    width: 215,
                    child: ElevatedButton(
                        child: Text(
                          "About",
                          style: TextStyle(fontSize: 29.0, color: Colors.black),
                        ),
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => About()));
                        },
                        style: ElevatedButton.styleFrom(
                            primary: Color.fromRGBO(153, 255, 153, 1)))),
              ),
            ],
          ),
        ])));
  }
}
