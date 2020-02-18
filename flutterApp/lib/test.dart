import 'package:flutter/material.dart';
import 'package:flutter_full_pdf_viewer/full_pdf_viewer_scaffold.dart';

//Dont change class name (TestRoute) without changing it in main.dart.
class TestRoute extends StatelessWidget {
  
  final String path; 
  const TestRoute({Key key, this.path}) : super(key: key); 
  
  @override
  Widget build(BuildContext context) {
    return PDFViewerScaffold(path: path,);
  }
}
