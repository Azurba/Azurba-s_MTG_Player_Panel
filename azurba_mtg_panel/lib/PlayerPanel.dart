import 'dart:ui';
import 'package:abruza_mtg_panel/common/Button.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  debugPaintSizeEnabled = false;
  runApp(MaterialApp(
    //this is a function to run our app and it takes a widgets as a paramether, which is the materialapp (the app itself)
      title: "Azurba's MTG Player Panel", //title for the  app
      home:
      PlayerPanel() //homepage of our app. You can pass a widget such as a container, or a class (Home()).
  ));
}

class PlayerPanel extends StatefulWidget {
  const PlayerPanel({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<PlayerPanel> {
  int _life = 40;
  int _commanderDamage = 20;
  int _dice_no = 1;
  int _coin_no = 1;
  int _poison = 0;
  int _energy = 0;
  int _whiteCounter = 0;
  int _blueCounter = 0;
  int _blackCounter = 0;
  int _redCounter = 0;
  int _greenCounter = 0;


  void _refresh() {
    setState(() {
      _life = 40;
      _commanderDamage = 20;
      _poison = 0;
      _energy = 0;
    });
  }

  void updateLife(int val) {
    _life += val;
    if (_life <= 0) {
      _life = 0;
    }
  }

  void updateCommanderDmg(int val) {
    _commanderDamage += val;
    if (_commanderDamage <= 0) {
      _commanderDamage = 0;
    }
    if (_commanderDamage >= 20) {
      _commanderDamage = 20;
    }
  }

  void updatePoison(int val) {
    _poison += val;
    if (_poison <= 0) {
      _poison = 0;
    }
  }

  void updateEnergy(int val) {
    _energy += val;
    if (_energy <= 0) {
      _energy = 0;
    }
  }

  void _refreshMana() {
    setState(() {
      _whiteCounter = 0;
      _blueCounter = 0;
      _blackCounter = 0;
      _redCounter = 0;
      _greenCounter = 0;
    });
  }

  void _diceRoll() {
    setState(() {
      _dice_no = Random().nextInt(6) + 1;
    });
  }

  void _coinFlip() {
    setState(() {
      _coin_no = Random().nextInt(2) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(builder: (BuildContext context) {
          return IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(context);
              });
        }),
        title: Text("Player Panel"),
        centerTitle: true,
        backgroundColor: Colors.black87,
        actions: [
          IconButton(
            icon: Icon(Icons.refresh),
            onPressed: () {
              _refresh();
            },
          )
        ],
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("img/allMana2.png", height: 60, width: 260)
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                      padding: EdgeInsets.all(6.0),
                      child: Text(
                          "Life Total", style: TextStyle(fontSize: 35.0)))
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ButtonObj(
                      text: "-1",
                      value: -1,
                      counter: (int val) =>
                          setState(() {
                            updateLife(val);
                          })),
                  ButtonObj(
                      text: "-10",
                      value: -10,
                      counter: (int val) =>
                          setState(() {
                            updateLife(val);
                          })),
                  Container(
                    color: Colors.white,
                    height: 30,
                    width: 60,
                    child: Text("$_life",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 25)),
                  ),
                  ButtonObj(
                      text: "+1",
                      value: 1,
                      counter: (int val) => setState(() => _life += val)),
                  ButtonObj(
                      text: "+10",
                      value: 10,
                      counter: (int val) => setState(() => _life += val)),
                ],
              ),
              Padding(
                  padding: EdgeInsets.all(10.0),
                  child:
                  Text("Commander Damage", style: TextStyle(fontSize: 35.0))),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ButtonObj(
                      text: "-1",
                      value: -1,
                      counter: (int val) =>
                          setState(() {
                            updateCommanderDmg(val);
                          })),
                  ButtonObj(
                      text: "-10",
                      value: -10,
                      counter: (int val) =>
                          setState(() {
                            updateCommanderDmg(val);
                          })),
                  Container(
                    color: Colors.white,
                    height: 30,
                    width: 60,
                    child: Text("$_commanderDamage",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 25)),
                  ),
                  ButtonObj(
                      text: "+1",
                      value: 1,
                      counter: (int val) =>
                          setState(() {
                            updateCommanderDmg(val);
                          })),
                  ButtonObj(
                      text: "+10",
                      value: 10,
                      counter: (int val) =>
                          setState(() {
                            updateCommanderDmg(val);
                          })),
                ],
              ),
              Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text("Poison", style: TextStyle(fontSize: 35.0))),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ButtonObj(
                      text: "-1",
                      value: -1,
                      counter: (int val) =>
                          setState(() {
                            updatePoison(val);
                          })),
                  Container(
                    color: Colors.white,
                    height: 30,
                    width: 60,
                    child: Text("$_poison",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 25)),
                  ),
                  ButtonObj(
                      text: "+1",
                      value: 1,
                      counter: (int val) => setState(() => _poison += val)),
                ],
              ),
              Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text("Energy", style: TextStyle(fontSize: 35.0))),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ButtonObj(
                      text: "-1",
                      value: -1,
                      counter: (int val) =>
                          setState(() {
                            updateEnergy(val);
                          })),
                  Container(
                    color: Colors.white,
                    height: 30,
                    width: 60,
                    child: Text("$_energy",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 25)),
                  ),
                  ButtonObj(
                      text: "+1",
                      value: 1,
                      counter: (int val) => setState(() => _energy += val)),
                ],
              ),
              Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text("Dice Roll", style: TextStyle(fontSize: 35.0))),
              Center(
                child: SizedBox(
                  height: 100,
                  width: 100,
                  child: IconButton(
                    icon: Image.asset('img/dice$_dice_no.PNG'),
                    onPressed: () {
                      _diceRoll();
                    },
                    iconSize: 150,
                  ),
                ),
              ),
              Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text("Coin Flip", style: TextStyle(fontSize: 35.0))),
              Center(
                child: SizedBox(
                  height: 100,
                  width: 100,
                  child: Padding(
                    padding: const EdgeInsets.all(1.0),
                    child: IconButton(
                      icon: Image.asset('img/coin$_coin_no.PNG'),
                      onPressed: () {
                        _coinFlip();
                      },
                      iconSize: 85,
                    ),
                  ),
                ),
              ),
              Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Mana Pool", style: TextStyle(fontSize: 35.0)),
                      IconButton(
                        icon: Icon(Icons.refresh),
                        onPressed: () {
                          _refreshMana();
                        },
                      )
                    ],
                  )),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 60,
                    width: 60,
                    child: IconButton(
                      icon: Image.asset(
                        'img/white.PNG',
                      ),
                      onPressed: () {
                        setState(() {
                          _whiteCounter += 1;
                        });
                      },
                      iconSize: 150,
                    ),
                  ),
                  Text("$_whiteCounter", style: TextStyle(fontSize: 20.0)),
                  Container(
                    height: 60,
                    width: 60,
                    child: IconButton(
                      onPressed: () {
                        setState(() {
                          _blueCounter += 1;
                        });
                      },
                      icon: Image.asset(
                        'img/blue.PNG',
                      ),
                      iconSize: 150,
                    ),
                  ),
                  Text("$_blueCounter", style: TextStyle(fontSize: 20.0)),
                  Container(
                    height: 60,
                    width: 60,
                    child: IconButton(
                      icon: Image.asset(
                        'img/black.PNG',
                      ),
                      onPressed: () {
                        setState(() {
                          _blackCounter += 1;
                        });
                      },
                      iconSize: 150,
                    ),
                  ),
                  Text("$_blackCounter", style: TextStyle(fontSize: 20.0)),
                  Container(
                    height: 60,
                    width: 60,
                    child: IconButton(
                      icon: Image.asset(
                        'img/red.PNG',
                      ),
                      onPressed: () {
                        setState(() {
                          _redCounter += 1;
                        });
                      },
                      iconSize: 150,
                    ),
                  ),
                  Text("$_redCounter", style: TextStyle(fontSize: 20.0)),
                  Container(
                    height: 60,
                    width: 60,
                    child: IconButton(
                      icon: Image.asset(
                        'img/green.PNG',
                      ),
                      onPressed: () {
                        setState(() {
                          _greenCounter += 1;
                        });
                      },
                      iconSize: 150,
                    ),
                  ),
                  Text("$_greenCounter", style: TextStyle(fontSize: 20.0))
                ],
              )
            ],
          )),
    );
  }
}
