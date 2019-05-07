import 'package:flutter/material.dart';

class UserWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
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

}