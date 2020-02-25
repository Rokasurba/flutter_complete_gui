import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalResult;
  final Function resetHandler;

  Result(this.totalResult, this.resetHandler);

  String get resultPhrase {
    var resultText = 'You did it!';

    if (totalResult <= 150) {
      resultText = 'You are osom and not bad';
    } else if (totalResult == 300) {
      resultText = 'MARSAS FOR THE WIN!!!';
    } else {
      resultText = 'Ai man pofik realiai';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,
                color: Colors.deepPurple),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text('Restart Quiz!'),
            onPressed: resetHandler,
            textColor: Colors.green,
          ),
        ],
      ),
    );
  }
}
