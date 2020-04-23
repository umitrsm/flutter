import 'package:flutter/material.dart';

class Answers extends StatelessWidget {
 
  final Function select;
  final String answerText;

  Answers(this.select, this.answerText);
 
  @override 
  Widget build (BuildContext contect) {
    return Container (
      width: double.infinity,
      child: RaisedButton(
        color: Colors.amber[200],
        textColor: Colors.purple,
        child: Text (answerText),
        onPressed: select,

      ),
    );
  }
}