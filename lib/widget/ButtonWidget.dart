import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Button'),
      ),
      body: Center(
        child: RaisedButton(
            elevation: 5.0,
            child: Text('click'),
            onPressed: () {
              debugPrint('Button click');
            }),
      ),
    );
  }
}
