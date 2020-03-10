import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

//custom form class for the evaluator
//used with addeval.dart to create a pop
//with two entry fields
//email and weight

class EvalCustomForm extends StatefulWidget
{
  @override
  EvalCustomFormState createState()
  {
    return EvalCustomFormState();
  }
}

class EvalCustomFormState extends State<EvalCustomForm>
{
  final _evalFormKey = GlobalKey<FormState>();

  var _evalFirstName, _evalLastName, _evalEmail, _evalWeight;

  @override
  Widget build(BuildContext context)
  {
    return Form(
      key: _evalFormKey,
      child: Column(
        children: <Widget>[
        Padding(
          padding: EdgeInsets.only(left: 10.0, right: 10.0),
          child: TextFormField(
          autocorrect: false,
          decoration: const InputDecoration(hintText: 'Enter Evaluators First Name'),
          //need to add an if statement to check if the email is already in the
          //database
          validator: (value)
          {
            if(value.isEmpty)
            {
              return 'Error Code 0001: empty first name field';
            }
            return null;
          },
          onSaved: (data) 
          {
            _evalFirstName = data;
          },
        ),
        ),
        Padding(
        padding: EdgeInsets.only(left: 10.0, right: 10.0),
        child: TextFormField(
          autocorrect: false,
          decoration: const InputDecoration(hintText: 'Enter Evaluators Last Name'),
          //need to add an if statement to check if the email is already in the
          //database
          validator: (value)
          {
            if(value.isEmpty)
            {
              return 'Error Code 0001: empty last name field';
            }
            return null;
          },
          onSaved: (data) 
          {
            _evalLastName = data;
          },
        ),
        ),
        Padding(
        padding: EdgeInsets.only(left: 10.0, right: 10.0),                  
        child: TextFormField(
          autocorrect: false,
          decoration: const InputDecoration(hintText: 'Enter Evaluators Email'),
          //need to add an if statement to check if the email is already in the
          //database
          validator: (value)
          {
            if(value.isEmpty)
            {
              return 'Error Code 0001: empty email field';
            }

            if(!value.contains('@') || !value.contains('.com'))
            {
              return 'Error Code 0002: email must be in the form example@mail.com';
            }

            return null;
          },
          onSaved: (data) 
          {
            _evalEmail = data;
          },
        ),
        ),
        Padding(
        padding: EdgeInsets.only(left: 10.0, right: 10.0),
        child: TextFormField(
          decoration: const InputDecoration(hintText: 'Enter Evaluators Weight'),
          //need to check if input is a number
          validator: (value)
          {
            if(value.isEmpty)
            {
              return 'Error Code 0003: empty weight field';
            }

            return null;
          },
          onSaved: (data) 
          {
            _evalWeight = data;
          },          
        ),
        ),
        RaisedButton(
          textColor: Colors.white,
          color: Colors.blue[900],
          onPressed: () 
          {
            if(_evalFormKey.currentState.validate())
            {
              //need to pass the saved values from
              //_evalFormKey.currentState to the database
              _evalFormKey.currentState.save();
              successPopUp();
            }
          },
          child: Text('Submit',
          style: TextStyle(
            fontSize: 20,
          ),
          ),
          ),
      ],
      ),
    );
  }

//Displays a dialog popup when the 
//user enters a valid evaluator
  void successPopUp()
  {
    SimpleDialog box = SimpleDialog(
      title: Text("Evaluator Added", 
      textAlign: TextAlign.center,
      ),
      children: <Widget>[
        Icon(
          Icons.check_circle_outline,
          color: Colors.green,
          size: 80,
          ),
      ],
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