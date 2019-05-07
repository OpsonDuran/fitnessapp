import 'package:flutter/material.dart';
import '../ui/points_painter.dart';

class PointsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 32.0, top: 24.0, right: 16),
      child: Container(
        width: double.infinity,
        height: 120.0,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0), color: Colors.white),
        child: CustomPaint(
          painter: PointsPainter(),
          child: Row(
            children: <Widget>[
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(32.0),
                  child: Column(
                    children: <Widget>[
                      Text("789",
                          style: TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.bold)),
                      Text(
                        "place",
                        style: TextStyle(
                            fontSize: 15.0, color: Colors.deepPurpleAccent),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(32.0),
                  child: Column(
                    children: <Widget>[
                      Text(
                        "9789",
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.bold),
                      ),
                      Text("points",
                          style: TextStyle(
                              fontSize: 15.0, color: Colors.deepPurpleAccent))
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
