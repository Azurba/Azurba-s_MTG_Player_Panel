import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/*
3 and 4 players panels
 */
void main() {
  runApp(MaterialApp(
    title: "5-6 Player Panel",
    home: FiveSixPlayerPanel(),
  ));
}

class FiveSixPlayerPanel extends StatefulWidget {
  const FiveSixPlayerPanel({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<FiveSixPlayerPanel> {

  int _lifeTotalPlayer1 = 40;
  int _lifeTotalPlayer2 = 40;
  int _lifeTotalPlayer3 = 40;
  int _lifeTotalPlayer4 = 40;
  int _lifeTotalPlayer5 = 40;
  int _lifeTotalPlayer6 = 40;

  void updateLifePlayer1 (int aux){
    setState(() {
      _lifeTotalPlayer1 += aux;
      if(_lifeTotalPlayer1 <= 0){
        _lifeTotalPlayer1 = 0;
      }
    });
  }

  void updateLifePlayer2 (int aux){
    setState(() {
      _lifeTotalPlayer2 += aux;
      if(_lifeTotalPlayer2 <= 0){
        _lifeTotalPlayer2 = 0;
      }
    });
  }

  void updateLifePlayer3 (int aux){
    setState(() {
      _lifeTotalPlayer3 += aux;
      if(_lifeTotalPlayer3 <= 0){
        _lifeTotalPlayer3 = 0;
      }
    });
  }

  void updateLifePlayer4 (int aux){
    setState(() {
      _lifeTotalPlayer4 += aux;
      if(_lifeTotalPlayer4 <= 0){
        _lifeTotalPlayer4 = 0;
      }
    });
  }

  void updateLifePlayer5 (int aux){
    setState(() {
      _lifeTotalPlayer5 += aux;
      if(_lifeTotalPlayer5 <= 0){
        _lifeTotalPlayer5 = 0;
      }
    });
  }

  void updateLifePlayer6 (int aux){
    setState(() {
      _lifeTotalPlayer6 += aux;
      if(_lifeTotalPlayer6 <= 0){
        _lifeTotalPlayer6 = 0;
      }
    });
  }

  void refresh(){
    setState(() {
      _lifeTotalPlayer1 = 40;
      _lifeTotalPlayer2 = 40;
      _lifeTotalPlayer3 = 40;
      _lifeTotalPlayer4 = 40;
      _lifeTotalPlayer5 = 40;
      _lifeTotalPlayer6 = 40;
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
          title: Text("5-6 Players Panel"),
          centerTitle: true,
          backgroundColor: Colors.black87,
          actions: [
            IconButton(
              icon: Icon(Icons.refresh),
              onPressed: () {
                refresh();
              },
            )
          ],
        ),
        body: SingleChildScrollView(
            child: Column(children: [
          Row(
            //Green and Red Container Row
            children: [
              //GREEN Container - Player 1
              Container(
                  color: Colors.green,
                  height: MediaQuery.of(context).size.height / 3.33,
                  width: MediaQuery.of(context).size.width / 2,
                  child: Transform.rotate(
                      angle: pi / 2,
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(0, 70, 0, 0),
                      child:
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            children: [
                              Flexible(
                                //height: MediaQuery.of(context).size.height / 20,
                                //width: MediaQuery.of(context).size.width / 7,
                                //color: Colors.black,
                                child: ElevatedButton(
                                  child: Text("-1"),
                                  onPressed: () {
                                    updateLifePlayer1(-1);
                                  },
                                    style: ElevatedButton.styleFrom(
                                        primary: Colors.black)
                                ),
                              ),
                              Flexible(
                                //height: MediaQuery.of(context).size.height / 20,
                                //width: MediaQuery.of(context).size.width / 7,
                                //color: Colors.black,
                                child: ElevatedButton(
                                  child: Text("-10"),
                                  onPressed: () {
                                    updateLifePlayer1(-10);
                                  },
                                    style: ElevatedButton.styleFrom(
                                        primary: Colors.black)
                                ),
                              ),
                            ],
                          ),
                          Column(children: [
                            Padding(
                                padding: EdgeInsets.fromLTRB(10, 25, 10, 20),
                                child: Flexible(
                                  //height: MediaQuery.of(context).size.height / 10,
                                  //width: MediaQuery.of(context).size.width / 4,
                                  //color: Colors.green,
                                  child: Text(
                                    "$_lifeTotalPlayer1",
                                    style: TextStyle(
                                        fontSize: 30,
                                        backgroundColor: Colors.green),
                                    textAlign: TextAlign.center,
                                  ),
                                )),
                          ]),
                          Column(
                            children: [
                              Flexible(
                                //height: MediaQuery.of(context).size.height / 20,
                                //width: MediaQuery.of(context).size.width / 7,
                                //color: Colors.black,
                                child: ElevatedButton(
                                  child: Text("+1"),
                                  onPressed: () {
                                    updateLifePlayer1(1);
                                  },
                                    style: ElevatedButton.styleFrom(
                                        primary: Colors.black)
                                ),
                              ),
                              Flexible(
                                //height: MediaQuery.of(context).size.height / 20,
                                //width: MediaQuery.of(context).size.width / 7,
                                //color: Colors.black,
                                child: ElevatedButton(
                                  child: Text("+10"),
                                  onPressed: () {
                                    updateLifePlayer1(10);
                                  },
                                    style: ElevatedButton.styleFrom(
                                        primary: Colors.black)
                                ),
                              ),
                            ],
                          ),
                        ],
                      )))),
              //RED Container - Player 2
              Container(
                  color: Colors.red,
                  height: MediaQuery.of(context).size.height / 3.33,
                  width: MediaQuery.of(context).size.width / 2,
                  child: Transform.rotate(
                      angle: 3*pi/2,
                      child: Padding(
                          padding: EdgeInsets.fromLTRB(0, 70, 0, 0),
                          child:
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Column(
                                children: [
                                  Flexible(
                                    //height: MediaQuery.of(context).size.height / 20,
                                    //width: MediaQuery.of(context).size.width / 7,
                                    //color: Colors.black,
                                    child: ElevatedButton(
                                      child: Text("-1"),
                                      onPressed: () {
                                        updateLifePlayer2(-1);
                                      },
                                        style: ElevatedButton.styleFrom(
                                            primary: Colors.black)
                                    ),
                                  ),
                                  Flexible(
                                    //height: MediaQuery.of(context).size.height / 20,
                                    //width: MediaQuery.of(context).size.width / 7,
                                    //color: Colors.black,
                                    child: ElevatedButton(
                                      child: Text("-10"),
                                      onPressed: () {
                                        updateLifePlayer2(-10);
                                      },
                                        style: ElevatedButton.styleFrom(
                                            primary: Colors.black)
                                    ),
                                  ),
                                ],
                              ),
                              Column(children: [
                                Padding(
                                    padding: EdgeInsets.fromLTRB(10, 25, 10, 20),
                                    child: Flexible(
                                      //height: MediaQuery.of(context).size.height / 10,
                                      //width: MediaQuery.of(context).size.width / 4,
                                      //color: Colors.green,
                                      child: Text(
                                        "$_lifeTotalPlayer2",
                                        style: TextStyle(
                                            fontSize: 30,
                                            backgroundColor: Colors.red),
                                        textAlign: TextAlign.center,
                                      ),
                                    )),
                              ]),
                              Column(
                                children: [
                                  Flexible(
                                    //height: MediaQuery.of(context).size.height / 20,
                                    //width: MediaQuery.of(context).size.width / 7,
                                    //color: Colors.black,
                                    child: ElevatedButton(
                                      child: Text("+1"),
                                      onPressed: () {
                                        updateLifePlayer2(1);
                                      },
                                        style: ElevatedButton.styleFrom(
                                            primary: Colors.black)
                                    ),
                                  ),
                                  Flexible(
                                    //height: MediaQuery.of(context).size.height / 20,
                                    //width: MediaQuery.of(context).size.width / 7,
                                    //color: Colors.black,
                                    child: ElevatedButton(
                                      child: Text("+10"),
                                      onPressed: () {
                                        updateLifePlayer2(10);
                                      },
                                        style: ElevatedButton.styleFrom(
                                            primary: Colors.black)
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ))))
            ],
          ),
          Row(
            children: [
              //Player 3 - Blue
              Container(
                  color: Colors.cyan,
                  height: MediaQuery.of(context).size.height / 3.33,
                  width: MediaQuery.of(context).size.width / 2,
                  child: Transform.rotate(
                      angle: pi / 2,
                      child: Padding(
                          padding: EdgeInsets.fromLTRB(0, 70, 0, 0),
                          child:
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Column(
                                children: [
                                  Flexible(
                                    //height: MediaQuery.of(context).size.height / 20,
                                    //width: MediaQuery.of(context).size.width / 7,
                                    //color: Colors.black,
                                    child: ElevatedButton(
                                      child: Text("-1"),
                                      onPressed: () {
                                        updateLifePlayer3(-1);
                                      },
                                        style: ElevatedButton.styleFrom(
                                            primary: Colors.black)
                                    ),
                                  ),
                                  Flexible(
                                    //height: MediaQuery.of(context).size.height / 20,
                                    //width: MediaQuery.of(context).size.width / 7,
                                    //color: Colors.black,
                                    child: ElevatedButton(
                                      child: Text("-10"),
                                      onPressed: () {
                                        updateLifePlayer3(-10);
                                      },
                                        style: ElevatedButton.styleFrom(
                                            primary: Colors.black)
                                    ),
                                  ),
                                ],
                              ),
                              Column(children: [
                                Padding(
                                    padding: EdgeInsets.fromLTRB(10, 25, 10, 20),
                                    child: Flexible(
                                      //height: MediaQuery.of(context).size.height / 10,
                                      //width: MediaQuery.of(context).size.width / 4,
                                      //color: Colors.green,
                                      child: Text(
                                        "$_lifeTotalPlayer3",
                                        style: TextStyle(
                                            fontSize: 30,
                                            backgroundColor: Colors.cyan),
                                        textAlign: TextAlign.center,
                                      ),
                                    )),
                              ]),
                              Column(
                                children: [
                                  Flexible(
                                    //height: MediaQuery.of(context).size.height / 20,
                                    //width: MediaQuery.of(context).size.width / 7,
                                    //color: Colors.black,
                                    child: ElevatedButton(
                                      child: Text("+1"),
                                      onPressed: () {
                                        updateLifePlayer3(1);
                                      },
                                        style: ElevatedButton.styleFrom(
                                            primary: Colors.black)
                                    ),
                                  ),
                                  Flexible(
                                    //height: MediaQuery.of(context).size.height / 20,
                                    //width: MediaQuery.of(context).size.width / 7,
                                    //color: Colors.black,
                                    child: ElevatedButton(
                                      child: Text("+10"),
                                      onPressed: () {
                                        updateLifePlayer3(10);
                                      },
                                        style: ElevatedButton.styleFrom(
                                            primary: Colors.black)
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          )))),
              //Player 4 - Yellow
              Container(
                  color: Colors.yellow,
                  height: MediaQuery.of(context).size.height / 3.33,
                  width: MediaQuery.of(context).size.width / 2,
                  child: Transform.rotate(
                      angle: 3*pi/2,
                      child: Padding(
                          padding: EdgeInsets.fromLTRB(0, 70, 0, 0),
                          child:
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Column(
                                children: [
                                  Flexible(
                                    //height: MediaQuery.of(context).size.height / 20,
                                    //width: MediaQuery.of(context).size.width / 7,
                                    //color: Colors.black,
                                    child: ElevatedButton(
                                      child: Text("-1"),
                                      onPressed: () {
                                        updateLifePlayer4(-1);
                                      },
                                        style: ElevatedButton.styleFrom(
                                            primary: Colors.black)
                                    ),
                                  ),
                                  Flexible(
                                    //height: MediaQuery.of(context).size.height / 20,
                                    //width: MediaQuery.of(context).size.width / 7,
                                    //color: Colors.black,
                                    child: ElevatedButton(
                                      child: Text("-10"),
                                      onPressed: () {
                                        updateLifePlayer4(-10);
                                      },
                                        style: ElevatedButton.styleFrom(
                                            primary: Colors.black)
                                    ),
                                  ),
                                ],
                              ),
                              Column(children: [
                                Padding(
                                    padding: EdgeInsets.fromLTRB(10, 25, 10, 20),
                                    child: Flexible(
                                      //height: MediaQuery.of(context).size.height / 10,
                                      //width: MediaQuery.of(context).size.width / 4,
                                      //color: Colors.green,
                                      child: Text(
                                        "$_lifeTotalPlayer4",
                                        style: TextStyle(
                                            fontSize: 30,
                                            backgroundColor: Colors.yellow),
                                        textAlign: TextAlign.center,
                                      ),
                                    )),
                              ]),
                              Column(
                                children: [
                                  Flexible(
                                    //height: MediaQuery.of(context).size.height / 20,
                                    //width: MediaQuery.of(context).size.width / 7,
                                    //color: Colors.black,
                                    child: ElevatedButton(
                                      child: Text("+1"),
                                      onPressed: () {
                                        updateLifePlayer4(1);
                                      },
                                        style: ElevatedButton.styleFrom(
                                            primary: Colors.black)
                                    ),
                                  ),
                                  Flexible(
                                    //height: MediaQuery.of(context).size.height / 20,
                                    //width: MediaQuery.of(context).size.width / 7,
                                    //color: Colors.black,
                                    child: ElevatedButton(
                                      child: Text("+10"),
                                      onPressed: () {
                                        updateLifePlayer4(10);
                                      },
                                        style: ElevatedButton.styleFrom(
                                            primary: Colors.black)
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ))))
            ],
          ),
          Row(
            children: [
              //Player 5 - Orange
              Container(
                  color: Colors.orange,
                  height: MediaQuery.of(context).size.height / 3.33,
                  width: MediaQuery.of(context).size.width / 2,
                  child: Transform.rotate(
                      angle: pi / 2,
                      child: Padding(
                          padding: EdgeInsets.fromLTRB(0, 70, 0, 0),
                          child:
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Column(
                                children: [
                                  Flexible(
                                    //height: MediaQuery.of(context).size.height / 20,
                                    //width: MediaQuery.of(context).size.width / 7,
                                    //color: Colors.black,
                                    child: ElevatedButton(
                                      child: Text("-1"),
                                      onPressed: () {
                                        updateLifePlayer5(-1);
                                      },
                                        style: ElevatedButton.styleFrom(
                                            primary: Colors.black)
                                    ),
                                  ),
                                  Flexible(
                                    //height: MediaQuery.of(context).size.height / 20,
                                    //width: MediaQuery.of(context).size.width / 7,
                                    //color: Colors.black,
                                    child: ElevatedButton(
                                      child: Text("-10"),
                                      onPressed: () {
                                        updateLifePlayer5(-10);
                                      },
                                        style: ElevatedButton.styleFrom(
                                            primary: Colors.black)
                                    ),
                                  ),
                                ],
                              ),
                              Column(children: [
                                Padding(
                                    padding: EdgeInsets.fromLTRB(10, 25, 10, 20),
                                    child: Flexible(
                                      //height: MediaQuery.of(context).size.height / 10,
                                      //width: MediaQuery.of(context).size.width / 4,
                                      //color: Colors.green,
                                      child: Text(
                                        "$_lifeTotalPlayer5",
                                        style: TextStyle(
                                            fontSize: 30,
                                            backgroundColor: Colors.orange),
                                        textAlign: TextAlign.center,
                                      ),
                                    )),
                              ]),
                              Column(
                                children: [
                                  Flexible(
                                    //height: MediaQuery.of(context).size.height / 20,
                                    //width: MediaQuery.of(context).size.width / 7,
                                    //color: Colors.black,
                                    child: ElevatedButton(
                                      child: Text("+1"),
                                      onPressed: () {
                                        updateLifePlayer5(1);
                                      },
                                        style: ElevatedButton.styleFrom(
                                            primary: Colors.black)
                                    ),
                                  ),
                                  Flexible(
                                    //height: MediaQuery.of(context).size.height / 20,
                                    //width: MediaQuery.of(context).size.width / 7,
                                    //color: Colors.black,
                                    child: ElevatedButton(
                                      child: Text("+10"),
                                      onPressed: () {
                                        updateLifePlayer5(10);
                                      },
                                        style: ElevatedButton.styleFrom(
                                            primary: Colors.black)
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          )))),
              //Player 6 - Purple
              Container(
                  color: Colors.purple,
                  height: MediaQuery.of(context).size.height / 3.33,
                  width: MediaQuery.of(context).size.width / 2,
                  child: Transform.rotate(
                      angle: 3*pi/2,
                      child: Padding(
                          padding: EdgeInsets.fromLTRB(0, 70, 0, 0),
                          child:
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Column(
                                children: [
                                  Flexible(
                                    //height: MediaQuery.of(context).size.height / 20,
                                    //width: MediaQuery.of(context).size.width / 7,
                                    //color: Colors.black,
                                    child: ElevatedButton(
                                      child: Text("-1"),
                                      onPressed: () {
                                        updateLifePlayer6(-1);
                                      },
                                        style: ElevatedButton.styleFrom(
                                            primary: Colors.black)
                                    ),
                                  ),
                                  Flexible(
                                    //height: MediaQuery.of(context).size.height / 20,
                                    //width: MediaQuery.of(context).size.width / 7,
                                    //color: Colors.black,
                                    child: ElevatedButton(
                                      child: Text("-10"),
                                      onPressed: () {
                                        updateLifePlayer6(-10);
                                      },
                                        style: ElevatedButton.styleFrom(
                                            primary: Colors.black)
                                    ),
                                  ),
                                ],
                              ),
                              Column(children: [
                                Padding(
                                    padding: EdgeInsets.fromLTRB(10, 25, 10, 20),
                                    child: Flexible(
                                      //height: MediaQuery.of(context).size.height / 10,
                                      //width: MediaQuery.of(context).size.width / 4,
                                      //color: Colors.green,
                                      child: Text(
                                        "$_lifeTotalPlayer6",
                                        style: TextStyle(
                                            fontSize: 30,
                                            backgroundColor: Colors.purple),
                                        textAlign: TextAlign.center,
                                      ),
                                    )),
                              ]),
                              Column(
                                children: [
                                  Flexible(
                                    //height: MediaQuery.of(context).size.height / 20,
                                    //width: MediaQuery.of(context).size.width / 7,
                                    //color: Colors.black,
                                    child: ElevatedButton(
                                      child: Text("+1"),
                                      onPressed: () {
                                        updateLifePlayer6(1);
                                      },
                                        style: ElevatedButton.styleFrom(
                                            primary: Colors.black)
                                    ),
                                  ),
                                  Flexible(
                                    //height: MediaQuery.of(context).size.height / 20,
                                    //width: MediaQuery.of(context).size.width / 7,
                                    //color: Colors.black,
                                    child: ElevatedButton(
                                      child: Text("+10"),
                                      onPressed: () {
                                        updateLifePlayer6(10);
                                      },
                                        style: ElevatedButton.styleFrom(
                                            primary: Colors.black)
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ))))
            ],
          ),
        ])));
  }
}
