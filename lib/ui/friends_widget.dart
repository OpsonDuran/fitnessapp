import 'package:flutter/material.dart';

class FriendsWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
          height: 100,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20.0)
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("Friends",style: TextStyle(
                  fontWeight: FontWeight.bold ,
                ),textAlign: TextAlign.start,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    friendWidget("assets/Avatar-Image.png"),
                    friendWidget("assets/Avatar-Image.png"),
                    friendWidget("assets/Avatar-Image.png"),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                          height: 50.0,
                          width: 50.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            color: Colors.amberAccent,

                          ),

                          child : Center(
                            child: Text("12",style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25.0,
                            ),textAlign: TextAlign.center,

                            ),
                          )
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
      ),
    );
  }



  Widget friendWidget(String image) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 50.0,
        width: 50.0,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            image: DecorationImage(image: AssetImage(image))
        ),
      ),
    );
  }

}