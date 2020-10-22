import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(title: "Minimize", home: StackWidget()));

class StackWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            Container(
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                alignment: Alignment.center,
                child: RaisedButton(
                  child: Text("Tool"),
                  onPressed: () {
                    debugPrint("Toolbar option click!!");
                  },
                ))
          ],
          elevation: 10,
          centerTitle: true,
          title: Text("Title"),
        ),
        body: Center(
          child: Stack(
            overflow: Overflow.clip,
            children: [
              Container(
                width: 100,
                height: 100,
                color: Colors.amberAccent,
              ),
              Container(
                width: 90,
                height: 90,
                color: Colors.red,
              ),
              Container(
                width: 80,
                height: 80,
                color: Colors.green,
              )
            ],
          ),
        ));
  }
}
