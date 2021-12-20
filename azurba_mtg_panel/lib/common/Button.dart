import 'package:abruza_mtg_panel/PlayerPanel.dart';
import 'package:flutter/material.dart';

/*
This is the object for the +1/-1 buttons
 */

class ButtonObj extends StatelessWidget {
  final String text;
  final int value;
  final Function(int) counter;

  ButtonObj({required this.text, required this.value, required this.counter}); //constructor

  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(2.0),
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(primary: Colors.black),
            onPressed: () => counter(this.value),
            child: Text(this.text)),
    );
  }
}
