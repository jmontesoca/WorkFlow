import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class RemoveEvaluator extends StatefulWidget
{
  @override 
  RemoveEvaluatorState createState()
  {
    return RemoveEvaluatorState();
  }
}

class RemoveEvaluatorState extends State<RemoveEvaluator>
{
  @override
  Widget build(BuildContext context)
  {
    return RaisedButton(
      textColor: Colors.white,
      color: Colors.blue[900],
      onPressed: rmvEvalPopUp,
      child: Text('Remove',
      style: TextStyle(
        fontSize: 20,
        ),
        ),
      );
  }

  void rmvEvalPopUp()
  {
    SimpleDialog box = SimpleDialog(
      title: Text("Remove Evaluator", textAlign: TextAlign.center,
      ),
      // children: <Widget>[
      //   EvalRmvCustomForm(),
      // ],
    );

    showDialog(
      context: context,
      builder: (BuildContext context)
      {
        return box;
      }
      );    
  }
}