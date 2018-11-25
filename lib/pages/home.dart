import 'package:flutter/material.dart';
import 'package:myblog/includes/drawer.dart';
import 'package:myblog/model/travel.dart';
import 'package:myblog/widgets/my_card.dart';

class Home extends StatelessWidget {
  final List<Travel> myTravelList = [
    Travel("My Holidy", "16th, Nov, 2018", "assets/images/item.jpg", "loremove"),
    Travel("My Holidy", "16th, Nov, 2018", "assets/images/item1.jpg", "loremove"),
    Travel("My Holidy", "16th, Nov, 2018", "assets/images/item2.jpg", "loremove"),
    Travel("My Holidy", "16th, Nov, 2018", "assets/images/item3.jpg", "loremove"),
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My App"),
      ),
      drawer: MyDrawer(myTravelList),
      body: Container(
        padding: EdgeInsets.all(10.0),
        child: ListView.builder(
            itemCount: myTravelList.length,
            itemBuilder: (context, index) {
              return MyCard(myTravelList[index]);
            }),
      ),
    );
  }
}
