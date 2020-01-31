import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutterApp/widgets.dart';

void main() => runApp(MyApp());

// #docregion MyApp
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter layout demo',
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text(
          'Welcome', 
          style: TextStyle(fontSize: 32)
          ),
      ),

      body: LoginForm(), //Doesnt accept children
      // #docregion text
    );
  }
}

class LoginForm extends StatefulWidget {
  @override
  LoginFormState createState() {
    return LoginFormState();
  }
}

class LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Stack(children: <Widget>[
        Container(
            //child:
            ),
        Center(
          child: Container(
            width: 300.0,
            padding: EdgeInsets.only(top: 175.0),
            child: Column(children: <Widget>[
              //////////////////////////////////////////////////////////Text Fields
              new MyImageWidget(),

              TextFormField(
                decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue),
                  ),
                  prefixIcon: Icon(
                    Icons.mail,
                    color: Colors.red,
                    size: 24.0,
                  ),
                  hintText: 'Username',
                ),
                validator: (value) {
                  if (value.isEmpty) {
                    Scaffold.of(context).showSnackBar(
                        SnackBar(content: Text('Error: Username is empty.')));
                  }
                  return null;
                },
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 25.0),
                child: TextFormField(
                  decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue),
                      ),
                      prefixIcon: Icon(
                        Icons.lock_outline,
                        color: Colors.red,
                        size: 24.0,
                      ),
                      hintText: 'Password'),
                  validator: (value) {
                    if (value.isEmpty) {
                      Scaffold.of(context).showSnackBar(
                          SnackBar(content: Text('Error: Password is empty.')));
                    }
                    return null;
                  },
                ),
              ),

              ////////////////////////////////////////////////////////////Submission Button
              RaisedButton(
                onPressed: () {
                  if (_formKey.currentState.validate()) {
                    // If the form is valid, display a snackbar. In the real world,
                    // you'd often call a server or save the information in a database.
                    Scaffold.of(context).showSnackBar(
                        SnackBar(content: Text('Processing Submission')));
                  }
                },
                child: Text('LOG IN'),
              ),
              FlatButton(
                onPressed: () {},
                child: Text(
                  "Forgot password?",
                ),
              ),
            ]),
          ),
        ),
      ]),
    );
  }
}
