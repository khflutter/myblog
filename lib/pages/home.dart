import 'package:flutter/material.dart';
import 'package:myblog/includes/drawer.dart';
import 'package:myblog/model/travel.dart';
import 'package:myblog/widgets/my_card.dart';

class Home extends StatefulWidget {
  List<Travel> myTravelList = [
    Travel(
        "My Holidy", "16th, Nov, 2018", "assets/images/item.jpg", "loremove"),
  ];
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My App"),
      ),
      drawer: MyDrawer(widget.myTravelList),
      body: Container(
        padding: EdgeInsets.all(10.0),
        child: ListView.builder(
            itemCount: widget.myTravelList.length,
            itemBuilder: (context, index) {
              return MyCard(widget.myTravelList[index]);
            }),
      ),
    );
  }
}
