import 'package:flutter/material.dart';

//Dont change class name (FirstRoute) without changing it in main.dart.
class FirstRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //automaticallyimplyleading takes away back button when using Appbar
        automaticallyImplyLeading: false,
        title: Text('First Route'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Open route'),
          onPressed: () {
            // Navigate to second route when tapped.
          },
        ),
      ),
    );
  }
}
