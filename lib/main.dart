import 'package:flutter/material.dart';
import 'file:///D:/fluttersdk/flutter_project/flutter_app/flutter_app/lib/base/WidgetActivity.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Minimize name",
      home: MyApp(),
    ));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Title name')),
      body: Container(
        child: Center(
          child: RaisedButton(
              child: Text('Move to Widget screen'),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => WidgetActivity()));
              }),
        ),
      ),
    );
  }
}
