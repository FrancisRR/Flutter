import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      title: "Minimize",
      home: ColumnWidget(),
    ));

class ColumnWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Title"),
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.black12,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    "Child 1",
                    style: TextStyle(color: Colors.red, fontSize: 25),
                  )),
              Text(
                "Child 2",
                style: TextStyle(color: Colors.green, fontSize: 25),
              ),
              Text(
                "Child 3",
                style: TextStyle(color: Colors.amber, fontSize: 25),
              )
            ],
          ),
        ));
  }
}
