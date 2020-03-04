import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

//custom form class for the evaluator
//used with addeval.dart to create a pop
//with two entry fields
//email and weight

class FounderCustomForm extends StatefulWidget
{
  @override
  FounderCustomFormState createState()
  {
    return FounderCustomFormState();
  }
}

class FounderCustomFormState extends State<FounderCustomForm>
{
  final _evalFormKey = GlobalKey<FormState>();
  final myController = TextEditingController();

  var _founderName;

  @override
  void dispose() 
  {
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context)
  {
    return Form(
      key: _evalFormKey,
      child: Column(
        children: <Widget>[
        TextFormField(
          controller: myController,
          autocorrect: false,
          decoration: const InputDecoration(hintText: 'Enter Founders Company'),
          //need to add an if statement to check if the email is already in the
          //database
          validator: (value)
          {
            if(value.isEmpty)
            {
              return 'Error Code 0004: empty company name';
            }
            return null;
          },
          onSaved: (data) 
          {
            _founderName = data;
          },
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
      title: Text("Founder Added", 
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
    //change back to return box;
    showDialog(
      context: context,
      builder: (BuildContext context)
      {
        return box;
      }
      );
  }  
}