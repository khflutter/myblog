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
        child: ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                Image.asset(travel.getImage()),
                Text(travel.getDate()),
                Text(travel.getDescription())
              ],
            ),
          ],
        ),
      ),
    );
  }
}
