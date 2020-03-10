import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PDFMaker extends StatefulWidget {
  @override
  PDFMakerState createState() {
    return PDFMakerState();
  }
}

class PDFMakerState extends State<PDFMaker> {
//CAN ADD functions in here
  void PDFpopUp() {
    Widget optionONE = SimpleDialogOption(
      child: Row(
        children: [
          Icon(
            Icons.check_box_outline_blank,
            color: Colors.lightBlue,
          ),
          Padding(
            padding: EdgeInsets.only(
                left: 10), //creates space between icon and company name
            child: Text("Sexy Kitchen"),
          ),
        ],
      ),
      onPressed: () {
        //process one pdf here, but for multiple
        //we will need to use more modular tactics for the list of startups
        //and create a set so they can be saved in
        //We should add checkbox for multi select indicator
        //so if unique startup in list is found in saved set,
        //we then can be able to allow functionality for unmarking the checkbox
        //Similar to this: https://github.com/flutter/codelabs/blob/master/startup_namer/step6_add_interactivity/lib/main.dart
      },
    );

    Widget optionTWO = SimpleDialogOption(
      child: Row(
        children: [
          Icon(
            Icons.check_box_outline_blank,
            color: Colors.lightBlue,
          ),
          Padding(
            padding: EdgeInsets.only(left: 10),
            child: Text("Gabe's StartUp"),
          ),
        ],
      ),
      onPressed: () {},
    );

    SimpleDialog dialog = SimpleDialog(
      title: Text("Choose StartUp"),
      children: <Widget>[
        optionONE,
        optionTWO,
      ],
    );

    showDialog(
        context: context,
        builder: (BuildContext context) {
          return dialog;
        });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        child: SizedBox(
          width: 100,
          child: RaisedButton(
              textColor: Colors.white,
              color: Colors.blue[900],
              onPressed: PDFpopUp,
              child: Row(
                mainAxisAlignment:
                    MainAxisAlignment.center, // Centers children in row
                children: [
                  Text('PDF'),
                  SizedBox(width: 5), //creates a space in between text and icon
                  Icon(
                    Icons.picture_as_pdf,
                    color: Colors.red,
                  ),
                ],
              )),
        ),
      ),
    );
  }
}

