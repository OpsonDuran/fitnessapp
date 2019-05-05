import 'package:flutter/material.dart';

const backgroundColor = Color(0xff5E37DB);

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: Row(
          children: <Widget>[
            SizedBox(width: 32.0),
            Icon(Icons.arrow_back_ios),
          ],
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40.0),
                  color: Colors.green.withOpacity(0.3)),
              child: MaterialButton(
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.check,
                      color: Colors.green,
                    ),
                    SizedBox(width: 12.0),
                    Text(
                      "Friends",
                      style: TextStyle(color: Colors.green, fontSize: 18.0),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
      backgroundColor: backgroundColor,
      body: Column(
        children: <Widget>[
          userWidget(),
          pointsWidget(),
          graphWidget(),
          friendsWidget()
        ],
      ),
    );
  }

  Widget userWidget() {
    return Padding(
      padding: const EdgeInsets.only(left: 32.0, top: 24.0),
      child: Row(
        children: <Widget>[
          Container(
            width: 65.0,
            height: 65.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              image:
                  DecorationImage(image: AssetImage("assets/Avatar-Image.png")),
            ),
          ),
          SizedBox(width: 24.0),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "UserName",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Last Name",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18.0,
                  fontWeight: FontWeight.w300,
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  Widget pointsWidget() {
    return Padding(
      padding: const EdgeInsets.only(left: 32.0, top: 24.0, right: 16),
      child: Container(
        width: double.infinity,
        height: 120.0,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0), color: Colors.white),
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
    );
  }

  Widget graphWidget() {
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

  Widget friendsWidget() {
    return Container();
  }
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
