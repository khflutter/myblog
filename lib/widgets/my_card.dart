import 'package:flutter/material.dart';
import 'package:myblog/model/travel.dart';
import 'package:myblog/pages/travel/show.dart';

class MyCard extends StatelessWidget {
  final Travel travel;

  MyCard(this.travel);
  
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.album),
            title: Text(travel.getTitle()),
            subtitle: Text(travel.getDate()),
          ),
          Image.asset(travel.getImage()),
          Container(
            padding: EdgeInsets.all(10.0),
            child: Text(
              travel.getDescription(),
              style: TextStyle(fontFamily: "Nunito", fontSize: 18.0),
              textAlign: TextAlign.justify,
            ),
          ),
          Container(
            child: Column(
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.arrow_forward),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => ShowTravel(travel)));
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
