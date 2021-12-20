import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Two Player Panel",
    home: TwoPlayerPanel(),
  ));
}

class TwoPlayerPanel extends StatefulWidget {
  const TwoPlayerPanel({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<TwoPlayerPanel> {
  int _lifePlayer1 = 40;
  int _lifePlayer2 = 40;
  int _poisonEnergyPlayer1 = 0;
  int _poisonEnergyPlayer2 = 0;
  int _whiteCounterPlayer1 = 0;
  int _blueCounterPlayer1 = 0;
  int _blackCounterPlayer1 = 0;
  int _redCounterPlayer1 = 0;
  int _greenCounterPlayer1 = 0;
  int _whiteCounterPlayer2 = 0;
  int _blueCounterPlayer2 = 0;
  int _blackCounterPlayer2 = 0;
  int _redCounterPlayer2 = 0;
  int _greenCounterPlayer2 = 0;

  void updateLife1 (int aux){
    setState(() {
      _lifePlayer1 += aux;
      if(_lifePlayer1 <= 0){
        _lifePlayer1 = 0;
      }
    });
  }

  void updateLife2 (int aux){
    setState(() {
      _lifePlayer2 += aux;
      if(_lifePlayer2 <= 0){
        _lifePlayer2 = 0;
      }
    });
  }

  void updatePoisonEnergyPlayer1 (int aux){
    setState(() {
      _poisonEnergyPlayer1 += aux;
      if(_poisonEnergyPlayer1 <= 0){
        _poisonEnergyPlayer1 = 0;
      }
    });
  }

  void updatePoisonEnergyPlayer2 (int aux){
    setState(() {
      _poisonEnergyPlayer2 += aux;
      if(_poisonEnergyPlayer2 <= 0){
        _poisonEnergyPlayer2 = 0;
      }
    });
  }

  void _refresh() {
    setState(() {
      _lifePlayer1 = 40;
      _lifePlayer2 = 40;
      _poisonEnergyPlayer1 = 0;
      _poisonEnergyPlayer2 = 0;
    });
  }

  void _refreshMana1() {
    setState(() {
      _whiteCounterPlayer1 = 0;
      _blueCounterPlayer1 = 0;
      _blackCounterPlayer1 = 0;
      _redCounterPlayer1 = 0;
      _greenCounterPlayer1 = 0;
    });
  }


  void _refreshMana2() {
    setState(() {
      _whiteCounterPlayer2 = 0;
      _blueCounterPlayer2 = 0;
      _blackCounterPlayer2 = 0;
      _redCounterPlayer2 = 0;
      _greenCounterPlayer2 = 0;
    });
  }

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
          title: Text("Two Players Panel"),
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
        body: SingleChildScrollView(
          child: Column(
            children: [
              Transform.rotate(
                  alignment: Alignment.center,
                  angle: pi, //in radians. pi radians = 180 degrees
                  child: Container(
                      height: MediaQuery.of(context).size.height / 2.21,
                      //it is not exact 2, because you have to take into account the size of the appbar
                      width: MediaQuery.of(context).size.width,
                      color: Colors.green,
                      child: Column(
                        children: [
                          //PLAYER 2 - GREEN
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                  padding: EdgeInsets.all(6.0),
                                  child: Text("Life",
                                      style: TextStyle(fontSize: 35.0)))
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: EdgeInsets.all(6.0),
                                child: ElevatedButton(
                                    child: Text("-1"),
                                    onPressed: () {
                                      updateLife2(-1);
                                    },
                                    style: ElevatedButton.styleFrom(
                                        primary: Colors.black)),
                              ),
                              ElevatedButton(
                                  child: Text("-10"),
                                  onPressed: () {
                                    updateLife2(-10);
                                  },
                                  style: ElevatedButton.styleFrom(
                                      primary: Colors.black)),
                              Container(
                                color: Colors.green,
                                height: 30,
                                width: 100,
                                child: Text("$_lifePlayer2",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(fontSize: 25, backgroundColor: Colors.green)),
                              ),
                              Padding(
                                padding: EdgeInsets.all(6.0),
                                child: ElevatedButton(
                                    child: Text("+1"),
                                    onPressed: () {
                                      updateLife2(1);
                                    },
                                    style: ElevatedButton.styleFrom(
                                        primary: Colors.black)),
                              ),
                              ElevatedButton(
                                  child: Text("+10"),
                                  onPressed: () {
                                    updateLife2(10);
                                  },
                                  style: ElevatedButton.styleFrom(
                                      primary: Colors.black)),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                  padding: EdgeInsets.all(6.0),
                                  child:
                                  Text("Poison or Energy", style: TextStyle(fontSize: 35.0)))
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: EdgeInsets.all(6.0),
                                child: ElevatedButton(
                                    child: Text("-1"),
                                    onPressed: () {
                                      updatePoisonEnergyPlayer2(-1);
                                    },
                                    style: ElevatedButton.styleFrom(
                                        primary: Colors.black)),
                              ),
                              ElevatedButton(
                                  child: Text("-10"),
                                  onPressed: () {
                                    updatePoisonEnergyPlayer2(-10);
                                  },
                                  style: ElevatedButton.styleFrom(
                                      primary: Colors.black)),
                              Container(
                                color: Colors.green,
                                height: 30,
                                width: 100,
                                child: Text("$_poisonEnergyPlayer2",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(fontSize: 25, backgroundColor: Colors.green)),
                              ),
                              Padding(
                                padding: EdgeInsets.all(6.0),
                                child: ElevatedButton(
                                    child: Text("+1"),
                                    onPressed: () {
                                      updatePoisonEnergyPlayer2(1);
                                    },
                                    style: ElevatedButton.styleFrom(
                                        primary: Colors.black)),
                              ),
                              ElevatedButton(
                                  child: Text("+10"),
                                  onPressed: () {
                                    updatePoisonEnergyPlayer2(10);
                                  },
                                  style: ElevatedButton.styleFrom(
                                      primary: Colors.black)),
                            ],
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
                                      _refreshMana2();
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
                                    'img/white2.png',
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      _whiteCounterPlayer2 += 1;
                                    });
                                  },
                                  iconSize: 150,
                                ),
                              ),
                              Text("$_whiteCounterPlayer2", style: TextStyle(fontSize: 20.0)),
                              Container(
                                height: 60,
                                width: 60,
                                child: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      _blueCounterPlayer2 += 1;
                                    });
                                  },
                                  icon: Image.asset(
                                    'img/blue2.png',
                                  ),
                                  iconSize: 150,
                                ),
                              ),
                              Text("$_blueCounterPlayer2", style: TextStyle(fontSize: 20.0)),
                              Container(
                                height: 60,
                                width: 60,
                                child: IconButton(
                                  icon: Image.asset(
                                    'img/black2.png',
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      _blackCounterPlayer2 += 1;
                                    });
                                  },
                                  iconSize: 150,
                                ),
                              ),
                              Text("$_blackCounterPlayer2", style: TextStyle(fontSize: 20.0)),
                              Container(
                                height: 60,
                                width: 60,
                                child: IconButton(
                                  icon: Image.asset(
                                    'img/red2.png',
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      _redCounterPlayer2 += 1;
                                    });
                                  },
                                  iconSize: 150,
                                ),
                              ),
                              Text("$_redCounterPlayer2", style: TextStyle(fontSize: 20.0)),
                              Container(
                                height: 60,
                                width: 60,
                                child: IconButton(
                                  icon: Image.asset(
                                    'img/green2.png',
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      _greenCounterPlayer2 += 1;
                                    });
                                  },
                                  iconSize: 150,
                                ),
                              ),
                              Text("$_greenCounterPlayer2", style: TextStyle(fontSize: 20.0))
                            ],
                          ),
                        ],
                      ))),
              Container(
                height: MediaQuery.of(context).size.height / 2.21,
                width: MediaQuery.of(context).size.width,
                color: Colors.blue,
                child: Column(
                  children: [
                    //PLAYER 1 - BLUE
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                            padding: EdgeInsets.all(6.0),
                            child:
                                Text("Life", style: TextStyle(fontSize: 35.0)))
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.all(6.0),
                          child: ElevatedButton(
                              child: Text("-1"),
                              onPressed: () {
                                updateLife1(-1);
                              },
                              style: ElevatedButton.styleFrom(
                                  primary: Colors.black)),
                        ),
                        ElevatedButton(
                            child: Text("-10"),
                            onPressed: () {
                              updateLife1(-10);
                            },
                            style: ElevatedButton.styleFrom(
                                primary: Colors.black)),
                        Container(
                          color: Colors.blue,
                          height: 30,
                          width: 100,
                          child: Text("$_lifePlayer1",
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 25, backgroundColor: Colors.blue)),
                        ),
                        Padding(
                          padding: EdgeInsets.all(6.0),
                          child: ElevatedButton(
                              child: Text("+1"),
                              onPressed: () {
                                updateLife1(1);
                              },
                              style: ElevatedButton.styleFrom(
                                  primary: Colors.black)),
                        ),
                        ElevatedButton(
                            child: Text("+10"),
                            onPressed: () {
                              updateLife1(10);
                            },
                            style: ElevatedButton.styleFrom(
                                primary: Colors.black)),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                            padding: EdgeInsets.all(6.0),
                            child:
                            Text("Poison or Energy", style: TextStyle(fontSize: 35.0)))
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.all(6.0),
                          child: ElevatedButton(
                              child: Text("-1"),
                              onPressed: () {
                                updatePoisonEnergyPlayer1(-1);
                              },
                              style: ElevatedButton.styleFrom(
                                  primary: Colors.black)),
                        ),
                        ElevatedButton(
                            child: Text("-10"),
                            onPressed: () {
                              updatePoisonEnergyPlayer1(-10);
                            },
                            style: ElevatedButton.styleFrom(
                                primary: Colors.black)),
                        Container(
                          color: Colors.blue,
                          height: 30,
                          width: 100,
                          child: Text("$_poisonEnergyPlayer1",
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 25, backgroundColor: Colors.blue)),
                        ),
                        Padding(
                          padding: EdgeInsets.all(6.0),
                          child: ElevatedButton(
                              child: Text("+1"),
                              onPressed: () {
                                updatePoisonEnergyPlayer1(1);
                              },
                              style: ElevatedButton.styleFrom(
                                  primary: Colors.black)),
                        ),
                        ElevatedButton(
                            child: Text("+10"),
                            onPressed: () {
                              updatePoisonEnergyPlayer1(10);
                            },
                            style: ElevatedButton.styleFrom(
                                primary: Colors.black)),
                      ],
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
                                _refreshMana1();
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
                              'img/white2.png',
                            ),
                            onPressed: () {
                              setState(() {
                                _whiteCounterPlayer1 += 1;
                              });
                            },
                            iconSize: 150,
                          ),
                        ),
                        Text("$_whiteCounterPlayer1", style: TextStyle(fontSize: 20.0)),
                        Container(
                          height: 60,
                          width: 60,
                          child: IconButton(
                            onPressed: () {
                              setState(() {
                                _blueCounterPlayer1 += 1;
                              });
                            },
                            icon: Image.asset(
                              'img/blue2.png',
                            ),
                            iconSize: 150,
                          ),
                        ),
                        Text("$_blueCounterPlayer1", style: TextStyle(fontSize: 20.0)),
                        Container(
                          height: 60,
                          width: 60,
                          child: IconButton(
                            icon: Image.asset(
                              'img/black2.png',
                            ),
                            onPressed: () {
                              setState(() {
                                _blackCounterPlayer1 += 1;
                              });
                            },
                            iconSize: 150,
                          ),
                        ),
                        Text("$_blackCounterPlayer1", style: TextStyle(fontSize: 20.0)),
                        Container(
                          height: 60,
                          width: 60,
                          child: IconButton(
                            icon: Image.asset(
                              'img/red2.png',
                            ),
                            onPressed: () {
                              setState(() {
                                _redCounterPlayer1 += 1;
                              });
                            },
                            iconSize: 150,
                          ),
                        ),
                        Text("$_redCounterPlayer1", style: TextStyle(fontSize: 20.0)),
                        Container(
                          height: 60,
                          width: 60,
                          child: IconButton(
                            icon: Image.asset(
                              'img/green2.png',
                            ),
                            onPressed: () {
                              setState(() {
                                _greenCounterPlayer1 += 1;
                              });
                            },
                            iconSize: 150,
                          ),
                        ),
                        Text("$_greenCounterPlayer1", style: TextStyle(fontSize: 20.0))
                      ],
                    ), //s
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
