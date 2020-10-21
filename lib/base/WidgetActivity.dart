import 'package:flutter/material.dart';
import 'package:flutter_app/widget/ButtonWidget.dart';
import 'package:flutter_app/widget/ImageWidget.dart';
import 'package:flutter_app/widget/TextWidget.dart';

class WidgetActivity extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Widget Base")),
      body: Container(
        child: Row(
          children: [
            RaisedButton(
                child: Text('Text widget'),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => TextWidget()));
                }),
            RaisedButton(
                child: Text('Button widget'),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ButtonWidget()));
                }),
            RaisedButton(
                elevation: 5,
                child: Text('Image widget'),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ImageWidget()));
                })
          ],
        ),
      ),
    );
  }
}
