import 'package:flutter/material.dart';
import '../ui/user_widget.dart';
import '../ui/points_widget.dart';
import '../ui/graph_widget.dart';
import '../ui/friends_widget.dart';

const backgroundColor = Color(0xff5E37DB);

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: Bar(), backgroundColor: backgroundColor, body: Home());
  }
}

Widget Home() {
  return ListView(
    children: <Widget>[
      UserWidget(),
      PointsWidget(),
      GraphWidget(),
      FriendsWidget()
    ],
  );
}

Widget Bar() {
  return AppBar(
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
          child: MaterialButton(child: buttonFriends()),
        ),
      )
    ],
  );
}

Widget buttonFriends() {
  return Row(
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
  );
}
