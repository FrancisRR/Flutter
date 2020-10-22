import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      title: "Stateful widget",
      home: FavoriteCity(),
    ));

class FavoriteCity extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _FavoriteCity();
  }
}

class _FavoriteCity extends State<FavoriteCity> {
  String cityName = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Stateful widget")),
        body: Container(
          margin: EdgeInsets.all(20),
          child: Column(
            children: [
              TextField(
                style: TextStyle(fontSize: 30, color: Colors.black),
                decoration:
                    InputDecoration(hintText: "Enter the favorite city"),
                onSubmitted: (value) {
                  setState(() {
                    cityName = value;
                  });
                },
              ),
              Padding(
                padding: EdgeInsets.all(15),
                child: Text(
                  "Your favorite city is $cityName",
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 25,
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
