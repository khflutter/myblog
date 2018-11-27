import 'package:flutter/material.dart';
import 'package:myblog/model/travel.dart';

class NewTravel extends StatefulWidget {
  final List<Travel> myTravelList;
  NewTravel(this.myTravelList);
  _NewTravelState createState() => _NewTravelState();
}

class _NewTravelState extends State<NewTravel> {
  String title;
  String date;
  String description;
  String image = "assets/images/item.jpg";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("New Travel"),
      ),
      body: Container(
        padding: EdgeInsets.all(15.0),
        child: Column(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(labelText: "Title"),
              autofocus: true,
              onChanged: (String value) {
                title = value;
              },
            ),
            TextField(
              decoration: InputDecoration(labelText: "Date"),
              onChanged: (String value) {
                date = value;
              },
            ),
            TextField(
              decoration: InputDecoration(labelText: "Description"),
              maxLines: 10,
              onChanged: (String value) {
                description = value;
              },
            ),
            RaisedButton(
              onPressed: () {
                setState(() {
                  widget.myTravelList.add(Travel(
                    title,
                    date,
                    image,
                    description
                  ));            
                });
                print(widget.myTravelList.length);
                Navigator.pop(context);
              },
              child: Text("Create New Travel"),
            ),
          ],
        ),
      ),
    );
  }
}