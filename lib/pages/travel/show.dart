import 'package:flutter/material.dart';
import 'package:myblog/model/travel.dart';

class ShowTravel extends StatelessWidget {
  final Travel travel;
  ShowTravel(this.travel);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(travel.getTitle()),
      ),
      body: Container(
        color: Colors.white,
        child: ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                Image.asset(travel.getImage()),
                Container(
                  padding: EdgeInsets.all(25.0),
                  child: Column(
                    children: <Widget>[
                      Text(
                        travel.getDate(),
                        style: Theme.of(context).textTheme.title
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        travel.getDescription(),
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontFamily: "Nunito",
                          fontSize: 20.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
