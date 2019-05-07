import 'package:flutter/material.dart';

class GraphWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 32.0, top: 24.0, right: 16.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Text(
                "Days",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 16.0,
              ),
              Text("Months",
                  style: TextStyle(color: Colors.white, fontSize: 20.0)),
              Expanded(
                  child: Text("(visit in mins)",
                      textAlign: TextAlign.end,
                      style: TextStyle(
                          color: Colors.white.withOpacity(0.7),
                          fontSize: 15.0)))
            ],
          ),
        ),
        SizedBox(height: 24.0),
        Container(
          width: double.infinity,
          height: 150.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              dayItem("28.0", 25),
              dayItem("28.0", 55),
              dayItem("28.0", 55),
              dayItem("28.0", 55),
              dayItem("28.0", 35),
              dayItem("28.0", 55),
              dayItem("28.0", 45),
              dayItem("28.0", 25),
              dayItem("28.0", 55),
              dayItem("28.0", 5),
            ],
          ),
        )
      ],
    );
  }

  Widget dayItem(String day, int value) {
    var barHeight = 150.0 * value / 100.0;
    var offsetY = 150.0 - barHeight - 60.0;
    return Column(
      children: <Widget>[
        SizedBox(height: offsetY),
        Text(
          value.toString(),
          style: TextStyle(color: Colors.greenAccent),
        ),
        SizedBox(
          height: 12.0,
        ),
        Container(
          width: 2.0,
          height: barHeight,
          color: Colors.greenAccent.withOpacity(0.2),
        ),
        SizedBox(
          height: 12.0,
        ),
        Text(day,
            style: TextStyle(
              color: Colors.purpleAccent,
            ))
      ],
    );
  }
}
