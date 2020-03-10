import 'package:flutter/material.dart';

class textClass extends StatelessWidget {
  final String outputText;
  //final String inputText;

  var inputOne;

  final inputCon = new TextEditingController();

  textClass(this.outputText);//, this.inputText);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            outputText,
            style: TextStyle(
              fontSize: 20,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

