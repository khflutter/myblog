import 'package:flutter/material.dart';
import 'package:myblog/model/travel.dart';

class MyCard extends StatelessWidget {
  final Travel travel;

  MyCard(this.travel);
  
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const ListTile(
            leading: Icon(Icons.album),
            title: Text('The Enchanted Nightingale'),
            subtitle: Text("20th, Nov, 2018"),
          ),
          Image.asset("assets/images/item3.jpg"),
          Container(
            padding: EdgeInsets.all(10.0),
            child: Text(
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
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
                    print(travel.getTitle());
                  },
                  tooltip: "New Page",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
