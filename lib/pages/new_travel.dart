import 'package:flutter/material.dart';

class NewTravel extends StatelessWidget {
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
            ),
            TextField(
              decoration: InputDecoration(labelText: "Date"),
            ),
            TextField(
              decoration: InputDecoration(labelText: "Description"),
              maxLines: 10,
            ),
            RaisedButton(
              onPressed: () {},
              child: Text("Create New Travel"),
            ),
          ],
        ),
      ),
    );
  }
}
