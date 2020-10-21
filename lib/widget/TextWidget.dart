import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('TextWidget'),
        ),
        body: Center(
          child: TextView(),
        ));
  }
}

class TextView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      'Textview',
      maxLines: 5,
      textDirection: TextDirection.ltr,
      softWrap: true,
      textAlign: TextAlign.center,
      style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.bold,
          color: Colors.red,
          backgroundColor: Colors.green),
    );
  }
}
