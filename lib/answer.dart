import 'package:flutter/material.dart';

class Answer extends StatelessWidget {

  final Function selectHandler;
  final String answerText;

  // konstuktorius
  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.amber[500],
        textColor: Colors.black,
        child: Text(answerText),
        onPressed: selectHandler
      ),
    );
  }
}